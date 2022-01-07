
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct fpga_bridge {int dummy; } ;
struct alt_fpga2sdram_data {char* mask; struct regmap* sdrctl; struct device* dev; } ;


 int ENOMEM ;
 int F2S_BRIDGE_NAME ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int SYSMGR_ISWGRP_HANDOFF3 ;
 int _alt_fpga2sdram_enable_set (struct alt_fpga2sdram_data*,int) ;
 int altera_fpga2sdram_br_ops ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 struct fpga_bridge* devm_fpga_bridge_create (struct device*,int ,int *,struct alt_fpga2sdram_data*) ;
 struct alt_fpga2sdram_data* devm_kzalloc (struct device*,int,int ) ;
 int fpga_bridge_register (struct fpga_bridge*) ;
 int fpga_bridge_unregister (struct fpga_bridge*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_bridge*) ;
 int regmap_read (struct regmap*,int ,char**) ;
 void* syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int alt_fpga_bridge_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct alt_fpga2sdram_data *priv;
 struct fpga_bridge *br;
 u32 enable;
 struct regmap *sysmgr;
 int ret = 0;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;

 priv->sdrctl = syscon_regmap_lookup_by_compatible("altr,sdr-ctl");
 if (IS_ERR(priv->sdrctl)) {
  dev_err(dev, "regmap for altr,sdr-ctl lookup failed.\n");
  return PTR_ERR(priv->sdrctl);
 }

 sysmgr = syscon_regmap_lookup_by_compatible("altr,sys-mgr");
 if (IS_ERR(sysmgr)) {
  dev_err(dev, "regmap for altr,sys-mgr lookup failed.\n");
  return PTR_ERR(sysmgr);
 }


 regmap_read(sysmgr, SYSMGR_ISWGRP_HANDOFF3, &priv->mask);

 br = devm_fpga_bridge_create(dev, F2S_BRIDGE_NAME,
         &altera_fpga2sdram_br_ops, priv);
 if (!br)
  return -ENOMEM;

 platform_set_drvdata(pdev, br);

 ret = fpga_bridge_register(br);
 if (ret)
  return ret;

 dev_info(dev, "driver initialized with handoff %08x\n", priv->mask);

 if (!of_property_read_u32(dev->of_node, "bridge-enable", &enable)) {
  if (enable > 1) {
   dev_warn(dev, "invalid bridge-enable %u > 1\n", enable);
  } else {
   dev_info(dev, "%s bridge\n",
     (enable ? "enabling" : "disabling"));
   ret = _alt_fpga2sdram_enable_set(priv, enable);
   if (ret) {
    fpga_bridge_unregister(br);
    return ret;
   }
  }
 }

 return ret;
}
