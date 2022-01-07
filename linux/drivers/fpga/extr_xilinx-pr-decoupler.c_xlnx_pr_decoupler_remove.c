
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_pr_decoupler_data {int clk; } ;
struct platform_device {int dummy; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;


 int clk_unprepare (int ) ;
 int fpga_bridge_unregister (struct fpga_bridge*) ;
 struct fpga_bridge* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xlnx_pr_decoupler_remove(struct platform_device *pdev)
{
 struct fpga_bridge *bridge = platform_get_drvdata(pdev);
 struct xlnx_pr_decoupler_data *p = bridge->priv;

 fpga_bridge_unregister(bridge);

 clk_unprepare(p->clk);

 return 0;
}
