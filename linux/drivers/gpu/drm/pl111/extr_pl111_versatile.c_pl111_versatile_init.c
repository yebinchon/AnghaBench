
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct pl111_drm_dev_private {int * variant; int variant_display_disable; int variant_display_enable; int ctrl; int ienb; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef enum versatile_clcd { ____Placeholder_versatile_clcd } versatile_clcd ;


 int CLCD_PL111_CNTL ;
 int CLCD_PL111_IENB ;
 int EPROBE_DEFER ;

 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;







 int dev_err (struct device*,char*) ;
 struct regmap* dev_get_drvdata (int *) ;
 int dev_info (struct device*,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_find_matching_node_and_match (int *,int ,struct of_device_id const**) ;
 int of_node_put (struct device_node*) ;
 int pl110_integrator ;
 int pl110_versatile ;
 int pl111_integrator_enable ;
 int pl111_realview ;
 int pl111_realview_clcd_disable ;
 int pl111_realview_clcd_enable ;
 int pl111_versatile_disable ;
 int pl111_versatile_enable ;
 int pl111_vexpress ;
 int pl111_vexpress_clcd_init (struct device*,struct pl111_drm_dev_private*,struct regmap*) ;
 int platform_device_put (struct platform_device*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;
 int versatile_clcd_of_match ;
 struct regmap* versatile_syscon_map ;
 int vexpress_muxfpga_init () ;

int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
{
 const struct of_device_id *clcd_id;
 enum versatile_clcd versatile_clcd_type;
 struct device_node *np;
 struct regmap *map;
 int ret;

 np = of_find_matching_node_and_match(((void*)0), versatile_clcd_of_match,
          &clcd_id);
 if (!np) {

  return 0;
 }
 versatile_clcd_type = (enum versatile_clcd)clcd_id->data;


 if (versatile_clcd_type == 128) {
  struct platform_device *pdev;


  ret = vexpress_muxfpga_init();
  if (ret) {
   dev_err(dev, "unable to initialize muxfpga driver\n");
   of_node_put(np);
   return ret;
  }


  pdev = of_find_device_by_node(np);
  if (!pdev) {
   dev_err(dev, "can't find the sysreg device, deferring\n");
   of_node_put(np);
   return -EPROBE_DEFER;
  }
  map = dev_get_drvdata(&pdev->dev);
  if (!map) {
   dev_err(dev, "sysreg has not yet probed\n");
   platform_device_put(pdev);
   of_node_put(np);
   return -EPROBE_DEFER;
  }
 } else {
  map = syscon_node_to_regmap(np);
 }
 of_node_put(np);

 if (IS_ERR(map)) {
  dev_err(dev, "no Versatile syscon regmap\n");
  return PTR_ERR(map);
 }

 switch (versatile_clcd_type) {
 case 135:
  versatile_syscon_map = map;
  priv->variant = &pl110_integrator;
  priv->variant_display_enable = pl111_integrator_enable;
  dev_info(dev, "set up callbacks for Integrator PL110\n");
  break;
 case 129:
  versatile_syscon_map = map;

  priv->variant = &pl110_versatile;
  priv->variant_display_enable = pl111_versatile_enable;
  priv->variant_display_disable = pl111_versatile_disable;





  priv->ienb = CLCD_PL111_IENB;
  priv->ctrl = CLCD_PL111_CNTL;
  dev_info(dev, "set up callbacks for Versatile PL110\n");
  break;
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  versatile_syscon_map = map;
  priv->variant = &pl111_realview;
  priv->variant_display_enable = pl111_realview_clcd_enable;
  priv->variant_display_disable = pl111_realview_clcd_disable;
  dev_info(dev, "set up callbacks for RealView PL111\n");
  break;
 case 128:
  priv->variant = &pl111_vexpress;
  dev_info(dev, "initializing Versatile Express PL111\n");
  ret = pl111_vexpress_clcd_init(dev, priv, map);
  if (ret)
   return ret;
  break;
 default:
  dev_info(dev, "unknown Versatile system controller\n");
  break;
 }

 return 0;
}
