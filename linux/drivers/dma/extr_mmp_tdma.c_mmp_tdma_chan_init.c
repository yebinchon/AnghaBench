
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channels; } ;
struct mmp_tdma_device {TYPE_2__ device; struct mmp_tdma_chan** tdmac; scalar_t__ base; int dev; } ;
struct TYPE_3__ {int device_node; TYPE_2__* device; } ;
struct mmp_tdma_chan {int irq; int idx; int type; TYPE_1__ chan; int tasklet; int status; struct gen_pool* pool; scalar_t__ reg_base; int dev; } ;
struct gen_pool {int dummy; } ;


 int DMA_COMPLETE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TDMA_CHANNEL_NUM ;
 int dev_err (int ,char*) ;
 struct mmp_tdma_chan* devm_kzalloc (int ,int,int ) ;
 int dma_do_tasklet ;
 int list_add_tail (int *,int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mmp_tdma_chan_init(struct mmp_tdma_device *tdev,
     int idx, int irq,
     int type, struct gen_pool *pool)
{
 struct mmp_tdma_chan *tdmac;

 if (idx >= TDMA_CHANNEL_NUM) {
  dev_err(tdev->dev, "too many channels for device!\n");
  return -EINVAL;
 }


 tdmac = devm_kzalloc(tdev->dev, sizeof(*tdmac), GFP_KERNEL);
 if (!tdmac)
  return -ENOMEM;

 if (irq)
  tdmac->irq = irq;
 tdmac->dev = tdev->dev;
 tdmac->chan.device = &tdev->device;
 tdmac->idx = idx;
 tdmac->type = type;
 tdmac->reg_base = tdev->base + idx * 4;
 tdmac->pool = pool;
 tdmac->status = DMA_COMPLETE;
 tdev->tdmac[tdmac->idx] = tdmac;
 tasklet_init(&tdmac->tasklet, dma_do_tasklet, (unsigned long)tdmac);


 list_add_tail(&tdmac->chan.device_node,
   &tdev->device.channels);
 return 0;
}
