
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_18__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {int dummy; } ;
struct k3dma_soc_data {int flags; } ;
struct k3_dma_phy {int idx; scalar_t__ base; } ;
struct TYPE_17__ {int copy_align; int device_synchronize; int device_terminate_all; int device_resume; int device_pause; int device_config; int device_issue_pending; int device_prep_dma_cyclic; int device_prep_slave_sg; int device_prep_dma_memcpy; int device_tx_status; int device_free_chan_resources; TYPE_3__* dev; int cap_mask; int channels; } ;
struct k3_dma_dev {int dma_channels; int dma_requests; int dma_channel_mask; int irq; scalar_t__ clk; TYPE_2__ slave; int task; int chan_pending; int lock; struct k3_dma_chan* chans; scalar_t__ base; struct k3_dma_phy* phy; int pool; } ;
struct TYPE_16__ {int desc_free; } ;
struct k3_dma_chan {TYPE_1__ vc; int node; int status; } ;


 int BIT (int) ;
 int DMAENGINE_ALIGN_8_BYTES ;
 int DMA_CYCLIC ;
 int DMA_IN_PROGRESS ;
 int DMA_MEMCPY ;
 int DMA_SLAVE ;
 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int K3_FLAG_NOCLK ;
 int LLI_BLOCK_SIZE ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_warn (TYPE_3__*,char*) ;
 struct k3dma_soc_data* device_get_match_data (TYPE_3__*) ;
 scalar_t__ devm_clk_get (TYPE_3__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 void* devm_kcalloc (TYPE_3__*,int,int,int ) ;
 struct k3_dma_dev* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct k3_dma_dev*) ;
 int dma_async_device_register (TYPE_2__*) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int dma_cap_set (int ,int ) ;
 int dmam_pool_create (int ,TYPE_3__*,int ,int,int ) ;
 int k3_dma_config ;
 int k3_dma_enable_dma (struct k3_dma_dev*,int) ;
 int k3_dma_free_chan_resources ;
 int k3_dma_free_desc ;
 int k3_dma_int_handler ;
 int k3_dma_issue_pending ;
 int k3_dma_prep_dma_cyclic ;
 int k3_dma_prep_memcpy ;
 int k3_dma_prep_slave_sg ;
 int k3_dma_synchronize ;
 int k3_dma_tasklet ;
 int k3_dma_terminate_all ;
 int k3_dma_transfer_pause ;
 int k3_dma_transfer_resume ;
 int k3_dma_tx_status ;
 int k3_of_dma_simple_xlate ;
 int k3_pdma_dt_ids ;
 int of_dma_controller_register (int ,int ,struct k3_dma_dev*) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct k3_dma_dev*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vchan_init (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int k3_dma_probe(struct platform_device *op)
{
 const struct k3dma_soc_data *soc_data;
 struct k3_dma_dev *d;
 const struct of_device_id *of_id;
 struct resource *iores;
 int i, ret, irq = 0;

 iores = platform_get_resource(op, IORESOURCE_MEM, 0);
 if (!iores)
  return -EINVAL;

 d = devm_kzalloc(&op->dev, sizeof(*d), GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 soc_data = device_get_match_data(&op->dev);
 if (!soc_data)
  return -EINVAL;

 d->base = devm_ioremap_resource(&op->dev, iores);
 if (IS_ERR(d->base))
  return PTR_ERR(d->base);

 of_id = of_match_device(k3_pdma_dt_ids, &op->dev);
 if (of_id) {
  of_property_read_u32((&op->dev)->of_node,
    "dma-channels", &d->dma_channels);
  of_property_read_u32((&op->dev)->of_node,
    "dma-requests", &d->dma_requests);
  ret = of_property_read_u32((&op->dev)->of_node,
    "dma-channel-mask", &d->dma_channel_mask);
  if (ret) {
   dev_warn(&op->dev,
     "dma-channel-mask doesn't exist, considering all as available.\n");
   d->dma_channel_mask = (u32)~0UL;
  }
 }

 if (!(soc_data->flags & K3_FLAG_NOCLK)) {
  d->clk = devm_clk_get(&op->dev, ((void*)0));
  if (IS_ERR(d->clk)) {
   dev_err(&op->dev, "no dma clk\n");
   return PTR_ERR(d->clk);
  }
 }

 irq = platform_get_irq(op, 0);
 ret = devm_request_irq(&op->dev, irq,
   k3_dma_int_handler, 0, DRIVER_NAME, d);
 if (ret)
  return ret;

 d->irq = irq;


 d->pool = dmam_pool_create(DRIVER_NAME, &op->dev,
     LLI_BLOCK_SIZE, 32, 0);
 if (!d->pool)
  return -ENOMEM;


 d->phy = devm_kcalloc(&op->dev,
  d->dma_channels, sizeof(struct k3_dma_phy), GFP_KERNEL);
 if (d->phy == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < d->dma_channels; i++) {
  struct k3_dma_phy *p;

  if (!(d->dma_channel_mask & BIT(i)))
   continue;

  p = &d->phy[i];
  p->idx = i;
  p->base = d->base + i * 0x40;
 }

 INIT_LIST_HEAD(&d->slave.channels);
 dma_cap_set(DMA_SLAVE, d->slave.cap_mask);
 dma_cap_set(DMA_MEMCPY, d->slave.cap_mask);
 dma_cap_set(DMA_CYCLIC, d->slave.cap_mask);
 d->slave.dev = &op->dev;
 d->slave.device_free_chan_resources = k3_dma_free_chan_resources;
 d->slave.device_tx_status = k3_dma_tx_status;
 d->slave.device_prep_dma_memcpy = k3_dma_prep_memcpy;
 d->slave.device_prep_slave_sg = k3_dma_prep_slave_sg;
 d->slave.device_prep_dma_cyclic = k3_dma_prep_dma_cyclic;
 d->slave.device_issue_pending = k3_dma_issue_pending;
 d->slave.device_config = k3_dma_config;
 d->slave.device_pause = k3_dma_transfer_pause;
 d->slave.device_resume = k3_dma_transfer_resume;
 d->slave.device_terminate_all = k3_dma_terminate_all;
 d->slave.device_synchronize = k3_dma_synchronize;
 d->slave.copy_align = DMAENGINE_ALIGN_8_BYTES;


 d->chans = devm_kcalloc(&op->dev,
  d->dma_requests, sizeof(struct k3_dma_chan), GFP_KERNEL);
 if (d->chans == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < d->dma_requests; i++) {
  struct k3_dma_chan *c = &d->chans[i];

  c->status = DMA_IN_PROGRESS;
  INIT_LIST_HEAD(&c->node);
  c->vc.desc_free = k3_dma_free_desc;
  vchan_init(&c->vc, &d->slave);
 }


 ret = clk_prepare_enable(d->clk);
 if (ret < 0) {
  dev_err(&op->dev, "clk_prepare_enable failed: %d\n", ret);
  return ret;
 }

 k3_dma_enable_dma(d, 1);

 ret = dma_async_device_register(&d->slave);
 if (ret)
  goto dma_async_register_fail;

 ret = of_dma_controller_register((&op->dev)->of_node,
     k3_of_dma_simple_xlate, d);
 if (ret)
  goto of_dma_register_fail;

 spin_lock_init(&d->lock);
 INIT_LIST_HEAD(&d->chan_pending);
 tasklet_init(&d->task, k3_dma_tasklet, (unsigned long)d);
 platform_set_drvdata(op, d);
 dev_info(&op->dev, "initialized\n");

 return 0;

of_dma_register_fail:
 dma_async_device_unregister(&d->slave);
dma_async_register_fail:
 clk_disable_unprepare(d->clk);
 return ret;
}
