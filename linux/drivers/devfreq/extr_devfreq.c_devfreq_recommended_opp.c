
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;


 int DEVFREQ_FLAG_LEAST_UPPER_BOUND ;
 int ERANGE ;
 struct dev_pm_opp* ERR_PTR (int ) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_ceil (struct device*,unsigned long*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_floor (struct device*,unsigned long*) ;

struct dev_pm_opp *devfreq_recommended_opp(struct device *dev,
        unsigned long *freq,
        u32 flags)
{
 struct dev_pm_opp *opp;

 if (flags & DEVFREQ_FLAG_LEAST_UPPER_BOUND) {

  opp = dev_pm_opp_find_freq_floor(dev, freq);


  if (opp == ERR_PTR(-ERANGE))
   opp = dev_pm_opp_find_freq_ceil(dev, freq);
 } else {

  opp = dev_pm_opp_find_freq_ceil(dev, freq);


  if (opp == ERR_PTR(-ERANGE))
   opp = dev_pm_opp_find_freq_floor(dev, freq);
 }

 return opp;
}
