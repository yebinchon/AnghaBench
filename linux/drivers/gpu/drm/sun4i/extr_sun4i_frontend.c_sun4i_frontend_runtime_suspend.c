
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int reset; int bus_clk; int mod_clk; int ram_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_frontend* dev_get_drvdata (struct device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int sun4i_frontend_runtime_suspend(struct device *dev)
{
 struct sun4i_frontend *frontend = dev_get_drvdata(dev);

 clk_disable_unprepare(frontend->ram_clk);
 clk_disable_unprepare(frontend->mod_clk);
 clk_disable_unprepare(frontend->bus_clk);

 reset_control_assert(frontend->reset);

 return 0;
}
