
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_pr_decoupler_data {int clk; int io_base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct fpga_bridge {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 struct fpga_bridge* devm_fpga_bridge_create (int *,char*,int *,struct xlnx_pr_decoupler_data*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct xlnx_pr_decoupler_data* devm_kzalloc (int *,int,int ) ;
 int fpga_bridge_register (struct fpga_bridge*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_bridge*) ;
 int xlnx_pr_decoupler_br_ops ;

__attribute__((used)) static int xlnx_pr_decoupler_probe(struct platform_device *pdev)
{
 struct xlnx_pr_decoupler_data *priv;
 struct fpga_bridge *br;
 int err;
 struct resource *res;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->io_base))
  return PTR_ERR(priv->io_base);

 priv->clk = devm_clk_get(&pdev->dev, "aclk");
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "input clock not found\n");
  return PTR_ERR(priv->clk);
 }

 err = clk_prepare_enable(priv->clk);
 if (err) {
  dev_err(&pdev->dev, "unable to enable clock\n");
  return err;
 }

 clk_disable(priv->clk);

 br = devm_fpga_bridge_create(&pdev->dev, "Xilinx PR Decoupler",
         &xlnx_pr_decoupler_br_ops, priv);
 if (!br) {
  err = -ENOMEM;
  goto err_clk;
 }

 platform_set_drvdata(pdev, br);

 err = fpga_bridge_register(br);
 if (err) {
  dev_err(&pdev->dev, "unable to register Xilinx PR Decoupler");
  goto err_clk;
 }

 return 0;

err_clk:
 clk_unprepare(priv->clk);

 return err;
}
