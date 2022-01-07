
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,int) ;
 struct clk* devm_clk_get (int *,char*) ;

__attribute__((used)) static int axicdma_clk_init(struct platform_device *pdev, struct clk **axi_clk,
       struct clk **dev_clk, struct clk **tmp_clk,
       struct clk **tmp1_clk, struct clk **tmp2_clk)
{
 int err;

 *tmp_clk = ((void*)0);
 *tmp1_clk = ((void*)0);
 *tmp2_clk = ((void*)0);

 *axi_clk = devm_clk_get(&pdev->dev, "s_axi_lite_aclk");
 if (IS_ERR(*axi_clk)) {
  err = PTR_ERR(*axi_clk);
  dev_err(&pdev->dev, "failed to get axi_clk (%d)\n", err);
  return err;
 }

 *dev_clk = devm_clk_get(&pdev->dev, "m_axi_aclk");
 if (IS_ERR(*dev_clk)) {
  err = PTR_ERR(*dev_clk);
  dev_err(&pdev->dev, "failed to get dev_clk (%d)\n", err);
  return err;
 }

 err = clk_prepare_enable(*axi_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable axi_clk (%d)\n", err);
  return err;
 }

 err = clk_prepare_enable(*dev_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable dev_clk (%d)\n", err);
  goto err_disable_axiclk;
 }

 return 0;

err_disable_axiclk:
 clk_disable_unprepare(*axi_clk);

 return err;
}
