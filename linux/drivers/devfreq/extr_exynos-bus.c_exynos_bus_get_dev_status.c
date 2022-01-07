
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_bus {int ratio; int curr_freq; } ;
struct device {int dummy; } ;
struct devfreq_event_data {int load_count; int total_count; } ;
struct devfreq_dev_status {int total_time; int busy_time; int current_frequency; } ;


 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*) ;
 struct exynos_bus* dev_get_drvdata (struct device*) ;
 int exynos_bus_get_event (struct exynos_bus*,struct devfreq_event_data*) ;
 int exynos_bus_set_event (struct exynos_bus*) ;

__attribute__((used)) static int exynos_bus_get_dev_status(struct device *dev,
         struct devfreq_dev_status *stat)
{
 struct exynos_bus *bus = dev_get_drvdata(dev);
 struct devfreq_event_data edata;
 int ret;

 stat->current_frequency = bus->curr_freq;

 ret = exynos_bus_get_event(bus, &edata);
 if (ret < 0) {
  stat->total_time = stat->busy_time = 0;
  goto err;
 }

 stat->busy_time = (edata.load_count * 100) / bus->ratio;
 stat->total_time = edata.total_count;

 dev_dbg(dev, "Usage of devfreq-event : %lu/%lu\n", stat->busy_time,
       stat->total_time);

err:
 ret = exynos_bus_set_event(bus);
 if (ret < 0) {
  dev_err(dev, "failed to set event to devfreq-event devices\n");
  return ret;
 }

 return ret;
}
