
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dma_device {int dummy; } ;
struct fsl_re_drv_private {int hw_desc_pool; struct fsl_re_chan** re_jrs; scalar_t__ re_regs; struct dma_device dma_dev; } ;
struct fsl_re_chan_cfg {int jr_command; int jr_config_1; int oubring_size; int inbring_size; int oubring_base_l; int inbring_base_l; int oubring_base_h; int inbring_base_h; } ;
struct TYPE_2__ {struct fsl_re_chan* private; struct dma_device* device; } ;
struct fsl_re_chan {int inb_phys_addr; int oub_phys_addr; void* inb_ring_virt_addr; struct fsl_re_drv_private* re_dev; struct fsl_re_chan_cfg* jrregs; void* oub_ring_virt_addr; int free_q; int submit_q; int active_q; int ack_q; int desc_lock; struct device* dev; TYPE_1__ chan; int name; int irq; int irqtask; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FSL_RE_ADDR_BIT_MASK ;
 int FSL_RE_ADDR_BIT_SHIFT ;
 int FSL_RE_CFG1_CBS0 ;
 int FSL_RE_CFG1_CBSI ;
 int FSL_RE_ENABLE ;
 int FSL_RE_REG_LIODN_MASK ;
 int FSL_RE_RING_SIZE ;
 int FSL_RE_RING_SIZE_SHIFT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (struct device*,char*,...) ;
 struct fsl_re_drv_private* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct fsl_re_chan*) ;
 struct fsl_re_chan* devm_kzalloc (struct device*,int,int ) ;
 void* dma_pool_alloc (int ,int ,int*) ;
 int dma_pool_free (int ,void*,int) ;
 int fsl_re_dequeue ;
 int fsl_re_isr ;
 int in_be32 (int *) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 struct platform_device* of_platform_device_create (struct device_node*,int *,struct device*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int out_be32 (int *,int) ;
 int request_irq (int ,int ,int ,int ,struct device*) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int fsl_re_chan_probe(struct platform_device *ofdev,
        struct device_node *np, u8 q, u32 off)
{
 struct device *dev, *chandev;
 struct fsl_re_drv_private *re_priv;
 struct fsl_re_chan *chan;
 struct dma_device *dma_dev;
 u32 ptr;
 u32 status;
 int ret = 0, rc;
 struct platform_device *chan_ofdev;

 dev = &ofdev->dev;
 re_priv = dev_get_drvdata(dev);
 dma_dev = &re_priv->dma_dev;

 chan = devm_kzalloc(dev, sizeof(*chan), GFP_KERNEL);
 if (!chan)
  return -ENOMEM;


 chan_ofdev = of_platform_device_create(np, ((void*)0), dev);
 if (!chan_ofdev) {
  dev_err(dev, "Not able to create ofdev for jr %d\n", q);
  ret = -EINVAL;
  goto err_free;
 }


 rc = of_property_read_u32(np, "reg", &ptr);
 if (rc) {
  dev_err(dev, "Reg property not found in jr %d\n", q);
  ret = -ENODEV;
  goto err_free;
 }

 chan->jrregs = (struct fsl_re_chan_cfg *)((u8 *)re_priv->re_regs +
   off + ptr);


 chan->irq = irq_of_parse_and_map(np, 0);
 if (!chan->irq) {
  dev_err(dev, "No IRQ defined for JR %d\n", q);
  ret = -ENODEV;
  goto err_free;
 }

 snprintf(chan->name, sizeof(chan->name), "re_jr%02d", q);

 chandev = &chan_ofdev->dev;
 tasklet_init(&chan->irqtask, fsl_re_dequeue, (unsigned long)chandev);

 ret = request_irq(chan->irq, fsl_re_isr, 0, chan->name, chandev);
 if (ret) {
  dev_err(dev, "Unable to register interrupt for JR %d\n", q);
  ret = -EINVAL;
  goto err_free;
 }

 re_priv->re_jrs[q] = chan;
 chan->chan.device = dma_dev;
 chan->chan.private = chan;
 chan->dev = chandev;
 chan->re_dev = re_priv;

 spin_lock_init(&chan->desc_lock);
 INIT_LIST_HEAD(&chan->ack_q);
 INIT_LIST_HEAD(&chan->active_q);
 INIT_LIST_HEAD(&chan->submit_q);
 INIT_LIST_HEAD(&chan->free_q);

 chan->inb_ring_virt_addr = dma_pool_alloc(chan->re_dev->hw_desc_pool,
  GFP_KERNEL, &chan->inb_phys_addr);
 if (!chan->inb_ring_virt_addr) {
  dev_err(dev, "No dma memory for inb_ring_virt_addr\n");
  ret = -ENOMEM;
  goto err_free;
 }

 chan->oub_ring_virt_addr = dma_pool_alloc(chan->re_dev->hw_desc_pool,
  GFP_KERNEL, &chan->oub_phys_addr);
 if (!chan->oub_ring_virt_addr) {
  dev_err(dev, "No dma memory for oub_ring_virt_addr\n");
  ret = -ENOMEM;
  goto err_free_1;
 }


 out_be32(&chan->jrregs->inbring_base_h,
   chan->inb_phys_addr & FSL_RE_ADDR_BIT_MASK);
 out_be32(&chan->jrregs->oubring_base_h,
   chan->oub_phys_addr & FSL_RE_ADDR_BIT_MASK);
 out_be32(&chan->jrregs->inbring_base_l,
   chan->inb_phys_addr >> FSL_RE_ADDR_BIT_SHIFT);
 out_be32(&chan->jrregs->oubring_base_l,
   chan->oub_phys_addr >> FSL_RE_ADDR_BIT_SHIFT);
 out_be32(&chan->jrregs->inbring_size,
   FSL_RE_RING_SIZE << FSL_RE_RING_SIZE_SHIFT);
 out_be32(&chan->jrregs->oubring_size,
   FSL_RE_RING_SIZE << FSL_RE_RING_SIZE_SHIFT);


 status = in_be32(&chan->jrregs->jr_config_1) & FSL_RE_REG_LIODN_MASK;


 out_be32(&chan->jrregs->jr_config_1,
   FSL_RE_CFG1_CBSI | FSL_RE_CFG1_CBS0 | status);

 dev_set_drvdata(chandev, chan);


 out_be32(&chan->jrregs->jr_command, FSL_RE_ENABLE);

 return 0;

err_free_1:
 dma_pool_free(chan->re_dev->hw_desc_pool, chan->inb_ring_virt_addr,
        chan->inb_phys_addr);
err_free:
 return ret;
}
