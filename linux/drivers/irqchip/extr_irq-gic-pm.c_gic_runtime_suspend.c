
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_clk_data {int num_clocks; } ;
struct gic_chip_pm {int clks; struct gic_clk_data* clk_data; struct gic_chip_data* chip_data; } ;
struct gic_chip_data {int dummy; } ;
struct device {int dummy; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 struct gic_chip_pm* dev_get_drvdata (struct device*) ;
 int gic_cpu_save (struct gic_chip_data*) ;
 int gic_dist_save (struct gic_chip_data*) ;

__attribute__((used)) static int gic_runtime_suspend(struct device *dev)
{
 struct gic_chip_pm *chip_pm = dev_get_drvdata(dev);
 struct gic_chip_data *gic = chip_pm->chip_data;
 const struct gic_clk_data *data = chip_pm->clk_data;

 gic_dist_save(gic);
 gic_cpu_save(gic);

 clk_bulk_disable_unprepare(data->num_clocks, chip_pm->clks);

 return 0;
}
