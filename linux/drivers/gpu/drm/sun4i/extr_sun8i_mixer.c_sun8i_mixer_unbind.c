
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct sun8i_mixer {int reset; int bus_clk; int mod_clk; TYPE_1__ engine; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun8i_mixer* dev_get_drvdata (struct device*) ;
 int list_del (int *) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void sun8i_mixer_unbind(struct device *dev, struct device *master,
     void *data)
{
 struct sun8i_mixer *mixer = dev_get_drvdata(dev);

 list_del(&mixer->engine.list);

 clk_disable_unprepare(mixer->mod_clk);
 clk_disable_unprepare(mixer->bus_clk);
 reset_control_assert(mixer->reset);
}
