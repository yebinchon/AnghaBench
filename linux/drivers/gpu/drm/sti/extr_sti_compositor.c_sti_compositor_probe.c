
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sti_compositor_data {int dummy; } ;
struct sti_compositor {void** vtg; void* rst_aux; void* rst_main; void* clk_pix_aux; void* clk_pix_main; void* clk_compo_aux; void* clk_compo_main; int * regs; int data; TYPE_1__* vtg_vblank_nb; struct device* dev; } ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int notifier_call; } ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 unsigned int STI_MAX_MIXER ;
 size_t STI_MIXER_AUX ;
 size_t STI_MIXER_MAIN ;
 int component_add (struct device*,int *) ;
 int compositor_of_match ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_ioremap (struct device*,int ,int ) ;
 struct sti_compositor* devm_kzalloc (struct device*,int,int ) ;
 void* devm_reset_control_get_shared (struct device*,char*) ;
 int memcpy (int *,int ,int) ;
 TYPE_2__* of_match_node (int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 void* of_vtg_find (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sti_compositor*) ;
 int reset_control_deassert (void*) ;
 int resource_size (struct resource*) ;
 int sti_compositor_ops ;
 int sti_crtc_vblank_cb ;

__attribute__((used)) static int sti_compositor_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct device_node *vtg_np;
 struct sti_compositor *compo;
 struct resource *res;
 unsigned int i;

 compo = devm_kzalloc(dev, sizeof(*compo), GFP_KERNEL);
 if (!compo) {
  DRM_ERROR("Failed to allocate compositor context\n");
  return -ENOMEM;
 }
 compo->dev = dev;
 for (i = 0; i < STI_MAX_MIXER; i++)
  compo->vtg_vblank_nb[i].notifier_call = sti_crtc_vblank_cb;


 BUG_ON(!of_match_node(compositor_of_match, np)->data);

 memcpy(&compo->data, of_match_node(compositor_of_match, np)->data,
        sizeof(struct sti_compositor_data));


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  DRM_ERROR("Get memory resource failed\n");
  return -ENXIO;
 }
 compo->regs = devm_ioremap(dev, res->start, resource_size(res));
 if (compo->regs == ((void*)0)) {
  DRM_ERROR("Register mapping failed\n");
  return -ENXIO;
 }


 compo->clk_compo_main = devm_clk_get(dev, "compo_main");
 if (IS_ERR(compo->clk_compo_main)) {
  DRM_ERROR("Cannot get compo_main clock\n");
  return PTR_ERR(compo->clk_compo_main);
 }

 compo->clk_compo_aux = devm_clk_get(dev, "compo_aux");
 if (IS_ERR(compo->clk_compo_aux)) {
  DRM_ERROR("Cannot get compo_aux clock\n");
  return PTR_ERR(compo->clk_compo_aux);
 }

 compo->clk_pix_main = devm_clk_get(dev, "pix_main");
 if (IS_ERR(compo->clk_pix_main)) {
  DRM_ERROR("Cannot get pix_main clock\n");
  return PTR_ERR(compo->clk_pix_main);
 }

 compo->clk_pix_aux = devm_clk_get(dev, "pix_aux");
 if (IS_ERR(compo->clk_pix_aux)) {
  DRM_ERROR("Cannot get pix_aux clock\n");
  return PTR_ERR(compo->clk_pix_aux);
 }


 compo->rst_main = devm_reset_control_get_shared(dev, "compo-main");

 if (!IS_ERR(compo->rst_main))
  reset_control_deassert(compo->rst_main);

 compo->rst_aux = devm_reset_control_get_shared(dev, "compo-aux");

 if (!IS_ERR(compo->rst_aux))
  reset_control_deassert(compo->rst_aux);

 vtg_np = of_parse_phandle(pdev->dev.of_node, "st,vtg", 0);
 if (vtg_np)
  compo->vtg[STI_MIXER_MAIN] = of_vtg_find(vtg_np);
 of_node_put(vtg_np);

 vtg_np = of_parse_phandle(pdev->dev.of_node, "st,vtg", 1);
 if (vtg_np)
  compo->vtg[STI_MIXER_AUX] = of_vtg_find(vtg_np);
 of_node_put(vtg_np);

 platform_set_drvdata(pdev, compo);

 return component_add(&pdev->dev, &sti_compositor_ops);
}
