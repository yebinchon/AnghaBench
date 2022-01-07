
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct fpga_bridge {int dummy; } ;
struct altera_hps2fpga_data {int clk; int name; int l3reg; scalar_t__ remap_mask; int bridge_reset; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int _alt_hps2fpga_enable_set (struct altera_hps2fpga_data*,int) ;
 int altera_fpga_of_match ;
 int altera_hps2fpga_br_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_clk_get (struct device*,int *) ;
 struct fpga_bridge* devm_fpga_bridge_create (struct device*,int ,int *,struct altera_hps2fpga_data*) ;
 int fpga_bridge_register (struct fpga_bridge*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int of_reset_control_get_exclusive_by_index (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_bridge*) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int alt_fpga_bridge_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct altera_hps2fpga_data *priv;
 const struct of_device_id *of_id;
 struct fpga_bridge *br;
 u32 enable;
 int ret;

 of_id = of_match_device(altera_fpga_of_match, dev);
 if (!of_id) {
  dev_err(dev, "failed to match device\n");
  return -ENODEV;
 }

 priv = (struct altera_hps2fpga_data *)of_id->data;

 priv->bridge_reset = of_reset_control_get_exclusive_by_index(dev->of_node,
             0);
 if (IS_ERR(priv->bridge_reset)) {
  dev_err(dev, "Could not get %s reset control\n", priv->name);
  return PTR_ERR(priv->bridge_reset);
 }

 if (priv->remap_mask) {
  priv->l3reg = syscon_regmap_lookup_by_compatible("altr,l3regs");
  if (IS_ERR(priv->l3reg)) {
   dev_err(dev, "regmap for altr,l3regs lookup failed\n");
   return PTR_ERR(priv->l3reg);
  }
 }

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "no clock specified\n");
  return PTR_ERR(priv->clk);
 }

 ret = clk_prepare_enable(priv->clk);
 if (ret) {
  dev_err(dev, "could not enable clock\n");
  return -EBUSY;
 }

 if (!of_property_read_u32(dev->of_node, "bridge-enable", &enable)) {
  if (enable > 1) {
   dev_warn(dev, "invalid bridge-enable %u > 1\n", enable);
  } else {
   dev_info(dev, "%s bridge\n",
     (enable ? "enabling" : "disabling"));

   ret = _alt_hps2fpga_enable_set(priv, enable);
   if (ret)
    goto err;
  }
 }

 br = devm_fpga_bridge_create(dev, priv->name,
         &altera_hps2fpga_br_ops, priv);
 if (!br) {
  ret = -ENOMEM;
  goto err;
 }

 platform_set_drvdata(pdev, br);

 ret = fpga_bridge_register(br);
 if (ret)
  goto err;

 return 0;

err:
 clk_disable_unprepare(priv->clk);

 return ret;
}
