
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_drc {int reset; int bus_clk; int mod_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun6i_drc* dev_get_drvdata (struct device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void sun6i_drc_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct sun6i_drc *drc = dev_get_drvdata(dev);

 clk_disable_unprepare(drc->mod_clk);
 clk_disable_unprepare(drc->bus_clk);
 reset_control_assert(drc->reset);
}
