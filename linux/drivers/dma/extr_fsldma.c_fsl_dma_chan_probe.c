
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_3__ {int channels; } ;
struct fsldma_device {int feature; scalar_t__ irq; int dev; TYPE_1__ common; struct fsldma_chan** chan; } ;
struct TYPE_4__ {int device_node; TYPE_1__* device; } ;
struct fsldma_chan {int feature; int id; int idle; int regs; scalar_t__ irq; TYPE_2__ common; int pm_state; int ld_completed; int ld_running; int ld_pending; int desc_lock; int set_request_count; int set_dst_loop_size; int set_src_loop_size; int toggle_ext_start; int toggle_ext_pause; int name; int tasklet; int dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;


 int FSL_DMA_IP_MASK ;
 int FSL_DMA_MAX_CHANS_PER_DEVICE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RUNNING ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,char const*,scalar_t__) ;
 int dma_cookie_init (TYPE_2__*) ;
 int dma_do_tasklet ;
 int dma_init (struct fsldma_chan*) ;
 int fsl_chan_set_dst_loop_size ;
 int fsl_chan_set_request_count ;
 int fsl_chan_set_src_loop_size ;
 int fsl_chan_toggle_ext_pause ;
 int fsl_chan_toggle_ext_start ;
 int iounmap (int ) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int kfree (struct fsldma_chan*) ;
 struct fsldma_chan* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_iomap (struct device_node*,int ) ;
 int set_cdar (struct fsldma_chan*,int ) ;
 int snprintf (int ,int,char*,size_t) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int fsl_dma_chan_probe(struct fsldma_device *fdev,
 struct device_node *node, u32 feature, const char *compatible)
{
 struct fsldma_chan *chan;
 struct resource res;
 int err;


 chan = kzalloc(sizeof(*chan), GFP_KERNEL);
 if (!chan) {
  err = -ENOMEM;
  goto out_return;
 }


 chan->regs = of_iomap(node, 0);
 if (!chan->regs) {
  dev_err(fdev->dev, "unable to ioremap registers\n");
  err = -ENOMEM;
  goto out_free_chan;
 }

 err = of_address_to_resource(node, 0, &res);
 if (err) {
  dev_err(fdev->dev, "unable to find 'reg' property\n");
  goto out_iounmap_regs;
 }

 chan->feature = feature;
 if (!fdev->feature)
  fdev->feature = chan->feature;





 WARN_ON(fdev->feature != chan->feature);

 chan->dev = fdev->dev;
 chan->id = (res.start & 0xfff) < 0x300 ?
     ((res.start - 0x100) & 0xfff) >> 7 :
     ((res.start - 0x200) & 0xfff) >> 7;
 if (chan->id >= FSL_DMA_MAX_CHANS_PER_DEVICE) {
  dev_err(fdev->dev, "too many channels for device\n");
  err = -EINVAL;
  goto out_iounmap_regs;
 }

 fdev->chan[chan->id] = chan;
 tasklet_init(&chan->tasklet, dma_do_tasklet, (unsigned long)chan);
 snprintf(chan->name, sizeof(chan->name), "chan%d", chan->id);


 dma_init(chan);


 set_cdar(chan, 0);

 switch (chan->feature & FSL_DMA_IP_MASK) {
 case 128:
  chan->toggle_ext_pause = fsl_chan_toggle_ext_pause;

 case 129:
  chan->toggle_ext_start = fsl_chan_toggle_ext_start;
  chan->set_src_loop_size = fsl_chan_set_src_loop_size;
  chan->set_dst_loop_size = fsl_chan_set_dst_loop_size;
  chan->set_request_count = fsl_chan_set_request_count;
 }

 spin_lock_init(&chan->desc_lock);
 INIT_LIST_HEAD(&chan->ld_pending);
 INIT_LIST_HEAD(&chan->ld_running);
 INIT_LIST_HEAD(&chan->ld_completed);
 chan->idle = 1;




 chan->common.device = &fdev->common;
 dma_cookie_init(&chan->common);


 chan->irq = irq_of_parse_and_map(node, 0);


 list_add_tail(&chan->common.device_node, &fdev->common.channels);

 dev_info(fdev->dev, "#%d (%s), irq %d\n", chan->id, compatible,
   chan->irq ? chan->irq : fdev->irq);

 return 0;

out_iounmap_regs:
 iounmap(chan->regs);
out_free_chan:
 kfree(chan);
out_return:
 return err;
}
