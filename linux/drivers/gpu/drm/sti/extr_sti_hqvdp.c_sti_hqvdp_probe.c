
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hqvdp {int vtg; void* reset; void* clk_pix_main; void* clk; int regs; struct device* dev; } ;
struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int component_add (struct device*,int *) ;
 void* devm_clk_get (struct device*,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 struct sti_hqvdp* devm_kzalloc (struct device*,int,int ) ;
 void* devm_reset_control_get (struct device*,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_vtg_find (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sti_hqvdp*) ;
 int reset_control_deassert (void*) ;
 int resource_size (struct resource*) ;
 int sti_hqvdp_ops ;

__attribute__((used)) static int sti_hqvdp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *vtg_np;
 struct sti_hqvdp *hqvdp;
 struct resource *res;

 DRM_DEBUG_DRIVER("\n");

 hqvdp = devm_kzalloc(dev, sizeof(*hqvdp), GFP_KERNEL);
 if (!hqvdp) {
  DRM_ERROR("Failed to allocate HQVDP context\n");
  return -ENOMEM;
 }

 hqvdp->dev = dev;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  DRM_ERROR("Get memory resource failed\n");
  return -ENXIO;
 }
 hqvdp->regs = devm_ioremap(dev, res->start, resource_size(res));
 if (!hqvdp->regs) {
  DRM_ERROR("Register mapping failed\n");
  return -ENXIO;
 }


 hqvdp->clk = devm_clk_get(dev, "hqvdp");
 hqvdp->clk_pix_main = devm_clk_get(dev, "pix_main");
 if (IS_ERR(hqvdp->clk) || IS_ERR(hqvdp->clk_pix_main)) {
  DRM_ERROR("Cannot get clocks\n");
  return -ENXIO;
 }


 hqvdp->reset = devm_reset_control_get(dev, "hqvdp");
 if (!IS_ERR(hqvdp->reset))
  reset_control_deassert(hqvdp->reset);

 vtg_np = of_parse_phandle(pdev->dev.of_node, "st,vtg", 0);
 if (vtg_np)
  hqvdp->vtg = of_vtg_find(vtg_np);
 of_node_put(vtg_np);

 platform_set_drvdata(pdev, hqvdp);

 return component_add(&pdev->dev, &sti_hqvdp_ops);
}
