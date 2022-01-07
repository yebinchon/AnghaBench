
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts73xx_fpga_priv {int io_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct fpga_manager* devm_fpga_mgr_create (struct device*,char*,int *,struct ts73xx_fpga_priv*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ts73xx_fpga_priv* devm_kzalloc (struct device*,int,int ) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_manager*) ;
 int ts73xx_fpga_ops ;

__attribute__((used)) static int ts73xx_fpga_probe(struct platform_device *pdev)
{
 struct device *kdev = &pdev->dev;
 struct ts73xx_fpga_priv *priv;
 struct fpga_manager *mgr;
 struct resource *res;

 priv = devm_kzalloc(kdev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = kdev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->io_base = devm_ioremap_resource(kdev, res);
 if (IS_ERR(priv->io_base)) {
  dev_err(kdev, "unable to remap registers\n");
  return PTR_ERR(priv->io_base);
 }

 mgr = devm_fpga_mgr_create(kdev, "TS-73xx FPGA Manager",
       &ts73xx_fpga_ops, priv);
 if (!mgr)
  return -ENOMEM;

 platform_set_drvdata(pdev, mgr);

 return fpga_mgr_register(mgr);
}
