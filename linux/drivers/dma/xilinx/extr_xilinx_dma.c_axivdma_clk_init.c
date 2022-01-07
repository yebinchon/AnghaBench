
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

__attribute__((used)) static int axivdma_clk_init(struct platform_device *pdev, struct clk **axi_clk,
       struct clk **tx_clk, struct clk **txs_clk,
       struct clk **rx_clk, struct clk **rxs_clk)
{
 int err;

 *axi_clk = devm_clk_get(&pdev->dev, "s_axi_lite_aclk");
 if (IS_ERR(*axi_clk)) {
  err = PTR_ERR(*axi_clk);
  dev_err(&pdev->dev, "failed to get axi_aclk (%d)\n", err);
  return err;
 }

 *tx_clk = devm_clk_get(&pdev->dev, "m_axi_mm2s_aclk");
 if (IS_ERR(*tx_clk))
  *tx_clk = ((void*)0);

 *txs_clk = devm_clk_get(&pdev->dev, "m_axis_mm2s_aclk");
 if (IS_ERR(*txs_clk))
  *txs_clk = ((void*)0);

 *rx_clk = devm_clk_get(&pdev->dev, "m_axi_s2mm_aclk");
 if (IS_ERR(*rx_clk))
  *rx_clk = ((void*)0);

 *rxs_clk = devm_clk_get(&pdev->dev, "s_axis_s2mm_aclk");
 if (IS_ERR(*rxs_clk))
  *rxs_clk = ((void*)0);

 err = clk_prepare_enable(*axi_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable axi_clk (%d)\n", err);
  return err;
 }

 err = clk_prepare_enable(*tx_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable tx_clk (%d)\n", err);
  goto err_disable_axiclk;
 }

 err = clk_prepare_enable(*txs_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable txs_clk (%d)\n", err);
  goto err_disable_txclk;
 }

 err = clk_prepare_enable(*rx_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable rx_clk (%d)\n", err);
  goto err_disable_txsclk;
 }

 err = clk_prepare_enable(*rxs_clk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable rxs_clk (%d)\n", err);
  goto err_disable_rxclk;
 }

 return 0;

err_disable_rxclk:
 clk_disable_unprepare(*rx_clk);
err_disable_txsclk:
 clk_disable_unprepare(*txs_clk);
err_disable_txclk:
 clk_disable_unprepare(*tx_clk);
err_disable_axiclk:
 clk_disable_unprepare(*axi_clk);

 return err;
}
