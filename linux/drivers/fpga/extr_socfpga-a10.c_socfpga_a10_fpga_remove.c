
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fpga_manager {struct a10_fpga_priv* priv; } ;
struct a10_fpga_priv {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int socfpga_a10_fpga_remove(struct platform_device *pdev)
{
 struct fpga_manager *mgr = platform_get_drvdata(pdev);
 struct a10_fpga_priv *priv = mgr->priv;

 fpga_mgr_unregister(mgr);
 clk_disable_unprepare(priv->clk);

 return 0;
}
