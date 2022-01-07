
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_exact (struct device*,unsigned long,int) ;
 unsigned int dev_pm_opp_get_level (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;

__attribute__((used)) static unsigned int a6xx_gmu_get_arc_level(struct device *dev,
        unsigned long freq)
{
 struct dev_pm_opp *opp;
 unsigned int val;

 if (!freq)
  return 0;

 opp = dev_pm_opp_find_freq_exact(dev, freq, 1);
 if (IS_ERR(opp))
  return 0;

 val = dev_pm_opp_get_level(opp);

 dev_pm_opp_put(opp);

 return val;
}
