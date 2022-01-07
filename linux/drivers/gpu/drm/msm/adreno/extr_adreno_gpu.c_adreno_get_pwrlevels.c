
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {unsigned long fast_rate; struct dev_pm_opp* icc_path; } ;
struct device {int of_node; } ;
struct dev_pm_opp {int dummy; } ;


 int DBG (char*,int) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 unsigned long ULONG_MAX ;
 int adreno_get_legacy_pwrlevels (struct device*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_floor (struct device*,unsigned long*) ;
 int dev_pm_opp_of_add_table (struct device*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dev_warn (struct device*,char*) ;
 int of_find_property (int ,char*,int *) ;
 struct dev_pm_opp* of_icc_get (struct device*,int *) ;

__attribute__((used)) static int adreno_get_pwrlevels(struct device *dev,
  struct msm_gpu *gpu)
{
 unsigned long freq = ULONG_MAX;
 struct dev_pm_opp *opp;
 int ret;

 gpu->fast_rate = 0;


 if (!of_find_property(dev->of_node, "operating-points-v2", ((void*)0)))
  ret = adreno_get_legacy_pwrlevels(dev);
 else {
  ret = dev_pm_opp_of_add_table(dev);
  if (ret)
   DRM_DEV_ERROR(dev, "Unable to set the OPP table\n");
 }

 if (!ret) {

  opp = dev_pm_opp_find_freq_floor(dev, &freq);
  if (!IS_ERR(opp)) {
   gpu->fast_rate = freq;
   dev_pm_opp_put(opp);
  }
 }

 if (!gpu->fast_rate) {
  dev_warn(dev,
   "Could not find a clock rate. Using a reasonable default\n");

  gpu->fast_rate = 200000000;
 }

 DBG("fast_rate=%u, slow_rate=27000000", gpu->fast_rate);


 gpu->icc_path = of_icc_get(dev, ((void*)0));
 if (IS_ERR(gpu->icc_path))
  gpu->icc_path = ((void*)0);

 return 0;
}
