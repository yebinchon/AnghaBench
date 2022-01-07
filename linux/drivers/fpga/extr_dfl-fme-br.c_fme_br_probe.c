
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_bridge {int dummy; } ;
struct fme_br_priv {int pdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_get_platdata (struct device*) ;
 struct fpga_bridge* devm_fpga_bridge_create (struct device*,char*,int *,struct fme_br_priv*) ;
 struct fme_br_priv* devm_kzalloc (struct device*,int,int ) ;
 int fme_bridge_ops ;
 int fpga_bridge_register (struct fpga_bridge*) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_bridge*) ;

__attribute__((used)) static int fme_br_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct fme_br_priv *priv;
 struct fpga_bridge *br;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->pdata = dev_get_platdata(dev);

 br = devm_fpga_bridge_create(dev, "DFL FPGA FME Bridge",
         &fme_bridge_ops, priv);
 if (!br)
  return -ENOMEM;

 platform_set_drvdata(pdev, br);

 return fpga_bridge_register(br);
}
