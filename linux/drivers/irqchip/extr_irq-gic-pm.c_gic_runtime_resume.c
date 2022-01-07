
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_clk_data {int num_clocks; } ;
struct gic_chip_pm {int clks; struct gic_clk_data* clk_data; struct gic_chip_data* chip_data; } ;
struct gic_chip_data {int dummy; } ;
struct device {int dummy; } ;


 int clk_bulk_prepare_enable (int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct gic_chip_pm* dev_get_drvdata (struct device*) ;
 int gic_cpu_restore (struct gic_chip_data*) ;
 int gic_dist_restore (struct gic_chip_data*) ;

__attribute__((used)) static int gic_runtime_resume(struct device *dev)
{
 struct gic_chip_pm *chip_pm = dev_get_drvdata(dev);
 struct gic_chip_data *gic = chip_pm->chip_data;
 const struct gic_clk_data *data = chip_pm->clk_data;
 int ret;

 ret = clk_bulk_prepare_enable(data->num_clocks, chip_pm->clks);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }







 if (!gic)
  return 0;

 gic_dist_restore(gic);
 gic_cpu_restore(gic);

 return 0;
}
