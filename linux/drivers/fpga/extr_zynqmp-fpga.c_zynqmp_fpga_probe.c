
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_fpga_priv {struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct fpga_manager* devm_fpga_mgr_create (struct device*,char*,int *,struct zynqmp_fpga_priv*) ;
 struct zynqmp_fpga_priv* devm_kzalloc (struct device*,int,int ) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_manager*) ;
 int zynqmp_fpga_ops ;

__attribute__((used)) static int zynqmp_fpga_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct zynqmp_fpga_priv *priv;
 struct fpga_manager *mgr;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;

 mgr = devm_fpga_mgr_create(dev, "Xilinx ZynqMP FPGA Manager",
       &zynqmp_fpga_ops, priv);
 if (!mgr)
  return -ENOMEM;

 platform_set_drvdata(pdev, mgr);

 ret = fpga_mgr_register(mgr);
 if (ret) {
  dev_err(dev, "unable to register FPGA manager");
  return ret;
 }

 return 0;
}
