
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct sun4i_backend {int reset; int bus_clk; int mod_clk; int ram_clk; TYPE_1__ engine; } ;
struct device {int of_node; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_backend* dev_get_drvdata (struct device*) ;
 int list_del (int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int reset_control_assert (int ) ;
 int sun4i_backend_free_sat (struct device*) ;

__attribute__((used)) static void sun4i_backend_unbind(struct device *dev, struct device *master,
     void *data)
{
 struct sun4i_backend *backend = dev_get_drvdata(dev);

 list_del(&backend->engine.list);

 if (of_device_is_compatible(dev->of_node,
        "allwinner,sun8i-a33-display-backend"))
  sun4i_backend_free_sat(dev);

 clk_disable_unprepare(backend->ram_clk);
 clk_disable_unprepare(backend->mod_clk);
 clk_disable_unprepare(backend->bus_clk);
 reset_control_assert(backend->reset);
}
