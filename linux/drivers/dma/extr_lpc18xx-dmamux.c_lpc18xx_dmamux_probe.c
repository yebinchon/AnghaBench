
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int route_free; TYPE_2__* dev; } ;
struct lpc18xx_dmamux_data {TYPE_1__ dmarouter; int lock; int muxes; int dma_master_requests; int dma_mux_requests; int reg; } ;
struct lpc18xx_dmamux {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_kcalloc (TYPE_2__*,int ,int,int ) ;
 struct lpc18xx_dmamux_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int lpc18xx_dmamux_free ;
 int lpc18xx_dmamux_reserve ;
 int of_dma_router_register (struct device_node*,int ,TYPE_1__*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct lpc18xx_dmamux_data*) ;
 int spin_lock_init (int *) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int lpc18xx_dmamux_probe(struct platform_device *pdev)
{
 struct device_node *dma_np, *np = pdev->dev.of_node;
 struct lpc18xx_dmamux_data *dmamux;
 int ret;

 dmamux = devm_kzalloc(&pdev->dev, sizeof(*dmamux), GFP_KERNEL);
 if (!dmamux)
  return -ENOMEM;

 dmamux->reg = syscon_regmap_lookup_by_compatible("nxp,lpc1850-creg");
 if (IS_ERR(dmamux->reg)) {
  dev_err(&pdev->dev, "syscon lookup failed\n");
  return PTR_ERR(dmamux->reg);
 }

 ret = of_property_read_u32(np, "dma-requests",
       &dmamux->dma_mux_requests);
 if (ret) {
  dev_err(&pdev->dev, "missing dma-requests property\n");
  return ret;
 }

 dma_np = of_parse_phandle(np, "dma-masters", 0);
 if (!dma_np) {
  dev_err(&pdev->dev, "can't get dma master\n");
  return -ENODEV;
 }

 ret = of_property_read_u32(dma_np, "dma-requests",
       &dmamux->dma_master_requests);
 of_node_put(dma_np);
 if (ret) {
  dev_err(&pdev->dev, "missing master dma-requests property\n");
  return ret;
 }

 dmamux->muxes = devm_kcalloc(&pdev->dev, dmamux->dma_master_requests,
         sizeof(struct lpc18xx_dmamux),
         GFP_KERNEL);
 if (!dmamux->muxes)
  return -ENOMEM;

 spin_lock_init(&dmamux->lock);
 platform_set_drvdata(pdev, dmamux);
 dmamux->dmarouter.dev = &pdev->dev;
 dmamux->dmarouter.route_free = lpc18xx_dmamux_free;

 return of_dma_router_register(np, lpc18xx_dmamux_reserve,
          &dmamux->dmarouter);
}
