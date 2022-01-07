
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_10__ {int mapcnt; int fn; struct dma_slave_map const* map; } ;
struct TYPE_11__ {int src_addr_widths; int dst_addr_widths; int directions; int descriptor_reuse; TYPE_3__* dev; int residue_granularity; int copy_align; TYPE_1__ filter; int device_prep_dma_cyclic; int device_prep_slave_sg; int device_prep_dma_memcpy; int cap_mask; } ;
struct pxad_device {TYPE_2__ slave; int base; int phy_lock; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {int dummy; } ;
struct mmp_dma_platdata {int dma_channels; int nb_requestors; int slave_map_cnt; struct dma_slave_map* slave_map; } ;
struct dma_slave_map {int dummy; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int BIT (int ) ;
 int DMA_CYCLIC ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEMCPY ;
 int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_RESIDUE_GRANULARITY_DESCRIPTOR ;
 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PDMA_ALIGNMENT ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 struct mmp_dma_platdata* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_3__*,char*,int,int) ;
 int dev_warn (TYPE_3__*,char*,int) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct pxad_device* devm_kzalloc (TYPE_3__*,int,int ) ;
 int dma_cap_set (int ,int ) ;
 int of_dma_controller_register (scalar_t__,int ,struct pxad_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxad_device*) ;
 int pxad_dma_xlate ;
 int pxad_dt_ids ;
 int pxad_filter_fn ;
 int pxad_init_debugfs (struct pxad_device*) ;
 int pxad_init_dmadev (struct platform_device*,struct pxad_device*,int,int) ;
 int pxad_prep_dma_cyclic ;
 int pxad_prep_memcpy ;
 int pxad_prep_slave_sg ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pxad_probe(struct platform_device *op)
{
 struct pxad_device *pdev;
 const struct of_device_id *of_id;
 const struct dma_slave_map *slave_map = ((void*)0);
 struct mmp_dma_platdata *pdata = dev_get_platdata(&op->dev);
 struct resource *iores;
 int ret, dma_channels = 0, nb_requestors = 0, slave_map_cnt = 0;
 const enum dma_slave_buswidth widths =
  DMA_SLAVE_BUSWIDTH_1_BYTE | DMA_SLAVE_BUSWIDTH_2_BYTES |
  DMA_SLAVE_BUSWIDTH_4_BYTES;

 pdev = devm_kzalloc(&op->dev, sizeof(*pdev), GFP_KERNEL);
 if (!pdev)
  return -ENOMEM;

 spin_lock_init(&pdev->phy_lock);

 iores = platform_get_resource(op, IORESOURCE_MEM, 0);
 pdev->base = devm_ioremap_resource(&op->dev, iores);
 if (IS_ERR(pdev->base))
  return PTR_ERR(pdev->base);

 of_id = of_match_device(pxad_dt_ids, &op->dev);
 if (of_id) {
  of_property_read_u32(op->dev.of_node, "#dma-channels",
         &dma_channels);
  ret = of_property_read_u32(op->dev.of_node, "#dma-requests",
        &nb_requestors);
  if (ret) {
   dev_warn(pdev->slave.dev,
     "#dma-requests set to default 32 as missing in OF: %d",
     ret);
   nb_requestors = 32;
  }
 } else if (pdata && pdata->dma_channels) {
  dma_channels = pdata->dma_channels;
  nb_requestors = pdata->nb_requestors;
  slave_map = pdata->slave_map;
  slave_map_cnt = pdata->slave_map_cnt;
 } else {
  dma_channels = 32;
 }

 dma_cap_set(DMA_SLAVE, pdev->slave.cap_mask);
 dma_cap_set(DMA_MEMCPY, pdev->slave.cap_mask);
 dma_cap_set(DMA_CYCLIC, pdev->slave.cap_mask);
 dma_cap_set(DMA_PRIVATE, pdev->slave.cap_mask);
 pdev->slave.device_prep_dma_memcpy = pxad_prep_memcpy;
 pdev->slave.device_prep_slave_sg = pxad_prep_slave_sg;
 pdev->slave.device_prep_dma_cyclic = pxad_prep_dma_cyclic;
 pdev->slave.filter.map = slave_map;
 pdev->slave.filter.mapcnt = slave_map_cnt;
 pdev->slave.filter.fn = pxad_filter_fn;

 pdev->slave.copy_align = PDMA_ALIGNMENT;
 pdev->slave.src_addr_widths = widths;
 pdev->slave.dst_addr_widths = widths;
 pdev->slave.directions = BIT(DMA_MEM_TO_DEV) | BIT(DMA_DEV_TO_MEM);
 pdev->slave.residue_granularity = DMA_RESIDUE_GRANULARITY_DESCRIPTOR;
 pdev->slave.descriptor_reuse = 1;

 pdev->slave.dev = &op->dev;
 ret = pxad_init_dmadev(op, pdev, dma_channels, nb_requestors);
 if (ret) {
  dev_err(pdev->slave.dev, "unable to register\n");
  return ret;
 }

 if (op->dev.of_node) {

  ret = of_dma_controller_register(op->dev.of_node,
       pxad_dma_xlate, pdev);
  if (ret < 0) {
   dev_err(pdev->slave.dev,
    "of_dma_controller_register failed\n");
   return ret;
  }
 }

 platform_set_drvdata(op, pdev);
 pxad_init_debugfs(pdev);
 dev_info(pdev->slave.dev, "initialized %d channels on %d requestors\n",
   dma_channels, nb_requestors);
 return 0;
}
