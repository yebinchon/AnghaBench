
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dma_device {int directions; void* dst_addr_widths; void* src_addr_widths; int device_terminate_all; int device_pause; int device_config; int device_prep_slave_sg; int device_issue_pending; int device_tx_status; int device_prep_dma_memcpy; int device_free_chan_resources; int device_alloc_chan_resources; int cap_mask; int channels; struct device* dev; } ;
struct nbpf_device {int eirq; int clk; struct nbpf_channel* chan; struct nbpf_config const* config; int max_burst_mem_write; int max_burst_mem_read; int base; struct dma_device dma_dev; } ;
struct nbpf_desc_page {int dummy; } ;
struct nbpf_config {int num_channels; } ;
struct nbpf_channel {int irq; } ;
struct device_node {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int BIT (int ) ;
 int BUILD_BUG_ON (int) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEMCPY ;
 int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_SLAVE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 void* NBPF_DMA_BUSWIDTHS ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int chan ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct nbpf_device* devm_kzalloc (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct nbpf_device*) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_async_device_unregister (struct dma_device*) ;
 int dma_cap_set (int ,int ) ;
 int nbpf_alloc_chan_resources ;
 int nbpf_chan_probe (struct nbpf_device*,int) ;
 int nbpf_config ;
 int nbpf_configure (struct nbpf_device*) ;
 int nbpf_err_irq ;
 int nbpf_free_chan_resources ;
 int nbpf_issue_pending ;
 int nbpf_of_xlate ;
 int nbpf_pause ;
 int nbpf_prep_memcpy ;
 int nbpf_prep_slave_sg ;
 int nbpf_terminate_all ;
 int nbpf_tx_status ;
 struct nbpf_config* of_device_get_match_data (struct device*) ;
 int of_dma_controller_register (struct device_node*,int ,struct nbpf_device*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct nbpf_device*) ;
 int struct_size (struct nbpf_device*,int ,int) ;

__attribute__((used)) static int nbpf_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct nbpf_device *nbpf;
 struct dma_device *dma_dev;
 struct resource *iomem, *irq_res;
 const struct nbpf_config *cfg;
 int num_channels;
 int ret, irq, eirq, i;
 int irqbuf[9] ;
 unsigned int irqs = 0;

 BUILD_BUG_ON(sizeof(struct nbpf_desc_page) > PAGE_SIZE);


 if (!np)
  return -ENODEV;

 cfg = of_device_get_match_data(dev);
 num_channels = cfg->num_channels;

 nbpf = devm_kzalloc(dev, struct_size(nbpf, chan, num_channels),
       GFP_KERNEL);
 if (!nbpf)
  return -ENOMEM;

 dma_dev = &nbpf->dma_dev;
 dma_dev->dev = dev;

 iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 nbpf->base = devm_ioremap_resource(dev, iomem);
 if (IS_ERR(nbpf->base))
  return PTR_ERR(nbpf->base);

 nbpf->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(nbpf->clk))
  return PTR_ERR(nbpf->clk);

 of_property_read_u32(np, "max-burst-mem-read",
        &nbpf->max_burst_mem_read);
 of_property_read_u32(np, "max-burst-mem-write",
        &nbpf->max_burst_mem_write);

 nbpf->config = cfg;

 for (i = 0; irqs < ARRAY_SIZE(irqbuf); i++) {
  irq_res = platform_get_resource(pdev, IORESOURCE_IRQ, i);
  if (!irq_res)
   break;

  for (irq = irq_res->start; irq <= irq_res->end;
       irq++, irqs++)
   irqbuf[irqs] = irq;
 }







 if (irqs != 1 && irqs != 2 && irqs != num_channels + 1)
  return -ENXIO;

 if (irqs == 1) {
  eirq = irqbuf[0];

  for (i = 0; i <= num_channels; i++)
   nbpf->chan[i].irq = irqbuf[0];
 } else {
  eirq = platform_get_irq_byname(pdev, "error");
  if (eirq < 0)
   return eirq;

  if (irqs == num_channels + 1) {
   struct nbpf_channel *chan;

   for (i = 0, chan = nbpf->chan; i <= num_channels;
        i++, chan++) {

    if (irqbuf[i] == eirq)
     i++;
    chan->irq = irqbuf[i];
   }

   if (chan != nbpf->chan + num_channels)
    return -EINVAL;
  } else {

   if (irqbuf[0] == eirq)
    irq = irqbuf[1];
   else
    irq = irqbuf[0];

   for (i = 0; i <= num_channels; i++)
    nbpf->chan[i].irq = irq;
  }
 }

 ret = devm_request_irq(dev, eirq, nbpf_err_irq,
          IRQF_SHARED, "dma error", nbpf);
 if (ret < 0)
  return ret;
 nbpf->eirq = eirq;

 INIT_LIST_HEAD(&dma_dev->channels);


 for (i = 0; i < num_channels; i++) {
  ret = nbpf_chan_probe(nbpf, i);
  if (ret < 0)
   return ret;
 }

 dma_cap_set(DMA_MEMCPY, dma_dev->cap_mask);
 dma_cap_set(DMA_SLAVE, dma_dev->cap_mask);
 dma_cap_set(DMA_PRIVATE, dma_dev->cap_mask);


 dma_dev->device_alloc_chan_resources
  = nbpf_alloc_chan_resources;
 dma_dev->device_free_chan_resources = nbpf_free_chan_resources;
 dma_dev->device_prep_dma_memcpy = nbpf_prep_memcpy;
 dma_dev->device_tx_status = nbpf_tx_status;
 dma_dev->device_issue_pending = nbpf_issue_pending;
 dma_dev->device_prep_slave_sg = nbpf_prep_slave_sg;
 dma_dev->device_config = nbpf_config;
 dma_dev->device_pause = nbpf_pause;
 dma_dev->device_terminate_all = nbpf_terminate_all;

 dma_dev->src_addr_widths = NBPF_DMA_BUSWIDTHS;
 dma_dev->dst_addr_widths = NBPF_DMA_BUSWIDTHS;
 dma_dev->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);

 platform_set_drvdata(pdev, nbpf);

 ret = clk_prepare_enable(nbpf->clk);
 if (ret < 0)
  return ret;

 nbpf_configure(nbpf);

 ret = dma_async_device_register(dma_dev);
 if (ret < 0)
  goto e_clk_off;

 ret = of_dma_controller_register(np, nbpf_of_xlate, nbpf);
 if (ret < 0)
  goto e_dma_dev_unreg;

 return 0;

e_dma_dev_unreg:
 dma_async_device_unregister(dma_dev);
e_clk_off:
 clk_disable_unprepare(nbpf->clk);

 return ret;
}
