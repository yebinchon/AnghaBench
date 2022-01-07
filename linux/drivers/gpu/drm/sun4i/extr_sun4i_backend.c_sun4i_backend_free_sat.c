
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_backend {int sat_reset; int sat_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_backend* dev_get_drvdata (struct device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int sun4i_backend_free_sat(struct device *dev) {
 struct sun4i_backend *backend = dev_get_drvdata(dev);

 clk_disable_unprepare(backend->sat_clk);
 reset_control_assert(backend->sat_reset);

 return 0;
}
