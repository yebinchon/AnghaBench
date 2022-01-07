
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_bus {unsigned long curr_freq; int lock; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int dev_err (struct device*,char*) ;
 struct exynos_bus* dev_get_drvdata (struct device*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dev_pm_opp_set_rate (struct device*,unsigned long) ;
 struct dev_pm_opp* devfreq_recommended_opp (struct device*,unsigned long*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int exynos_bus_target(struct device *dev, unsigned long *freq, u32 flags)
{
 struct exynos_bus *bus = dev_get_drvdata(dev);
 struct dev_pm_opp *new_opp;
 int ret = 0;


 new_opp = devfreq_recommended_opp(dev, freq, flags);
 if (IS_ERR(new_opp)) {
  dev_err(dev, "failed to get recommended opp instance\n");
  return PTR_ERR(new_opp);
 }

 dev_pm_opp_put(new_opp);


 mutex_lock(&bus->lock);
 ret = dev_pm_opp_set_rate(dev, *freq);
 if (!ret)
  bus->curr_freq = *freq;

 mutex_unlock(&bus->lock);

 return ret;
}
