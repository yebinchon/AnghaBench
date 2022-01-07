
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_fpga_priv {int clk; } ;
struct platform_device {int dummy; } ;
struct fpga_manager {struct zynq_fpga_priv* priv; } ;


 int clk_unprepare (int ) ;
 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int zynq_fpga_remove(struct platform_device *pdev)
{
 struct zynq_fpga_priv *priv;
 struct fpga_manager *mgr;

 mgr = platform_get_drvdata(pdev);
 priv = mgr->priv;

 fpga_mgr_unregister(mgr);

 clk_unprepare(priv->clk);

 return 0;
}
