
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int* BapmVddCVidHiSidd; int* BapmVddCVidLoSidd; int GnbLPMLMaxVid; int GnbLPMLMinVid; } ;
struct ci_power_info {TYPE_1__ smc_powertune_table; } ;


 int EINVAL ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u8 *hi_vid = pi->smc_powertune_table.BapmVddCVidHiSidd;
 u8 *lo_vid = pi->smc_powertune_table.BapmVddCVidLoSidd;
 int i, min, max;

 min = max = hi_vid[0];
 for (i = 0; i < 8; i++) {
  if (0 != hi_vid[i]) {
   if (min > hi_vid[i])
    min = hi_vid[i];
   if (max < hi_vid[i])
    max = hi_vid[i];
  }

  if (0 != lo_vid[i]) {
   if (min > lo_vid[i])
    min = lo_vid[i];
   if (max < lo_vid[i])
    max = lo_vid[i];
  }
 }

 if ((min == 0) || (max == 0))
  return -EINVAL;
 pi->smc_powertune_table.GnbLPMLMaxVid = (u8)max;
 pi->smc_powertune_table.GnbLPMLMinVid = (u8)min;

 return 0;
}
