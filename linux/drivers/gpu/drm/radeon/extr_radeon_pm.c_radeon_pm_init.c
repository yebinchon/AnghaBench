
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_dpm_quirk {scalar_t__ chip_device; scalar_t__ chip_vendor; scalar_t__ subsys_vendor; scalar_t__ subsys_device; } ;
struct TYPE_4__ {scalar_t__ pm_method; } ;
struct radeon_device {int family; int flags; TYPE_2__ pm; int smc_fw; int rlc_fw; TYPE_1__* pdev; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
 scalar_t__ PM_METHOD_DPM ;
 void* PM_METHOD_PROFILE ;
 int RADEON_IS_IGP ;
 int radeon_dpm ;
 struct radeon_dpm_quirk* radeon_dpm_quirk_list ;
 int radeon_pm_init_dpm (struct radeon_device*) ;
 int radeon_pm_init_old (struct radeon_device*) ;

int radeon_pm_init(struct radeon_device *rdev)
{
 struct radeon_dpm_quirk *p = radeon_dpm_quirk_list;
 bool disable_dpm = 0;


 while (p && p->chip_device != 0) {
  if (rdev->pdev->vendor == p->chip_vendor &&
      rdev->pdev->device == p->chip_device &&
      rdev->pdev->subsystem_vendor == p->subsys_vendor &&
      rdev->pdev->subsystem_device == p->subsys_device) {
   disable_dpm = 1;
   break;
  }
  ++p;
 }


 switch (rdev->family) {
 case 141:
 case 139:
 case 140:
 case 138:
 case 137:
 case 143:
 case 142:
 case 133:

  if (!rdev->rlc_fw)
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else if ((rdev->family >= 133) &&
    (!(rdev->flags & RADEON_IS_IGP)) &&
    (!rdev->smc_fw))
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else if (radeon_dpm == 1)
   rdev->pm.pm_method = PM_METHOD_DPM;
  else
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  break;
 case 135:
 case 136:
 case 134:
 case 156:
 case 144:
 case 151:
 case 155:
 case 152:
 case 146:
 case 132:
 case 131:
 case 160:
 case 129:
 case 158:
 case 157:
 case 161:
 case 130:
 case 145:
 case 128:
 case 147:
 case 154:
 case 159:
 case 150:
 case 149:
 case 153:
 case 148:

  if (!rdev->rlc_fw)
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else if ((rdev->family >= 133) &&
    (!(rdev->flags & RADEON_IS_IGP)) &&
    (!rdev->smc_fw))
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else if (disable_dpm && (radeon_dpm == -1))
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else if (radeon_dpm == 0)
   rdev->pm.pm_method = PM_METHOD_PROFILE;
  else
   rdev->pm.pm_method = PM_METHOD_DPM;
  break;
 default:

  rdev->pm.pm_method = PM_METHOD_PROFILE;
  break;
 }

 if (rdev->pm.pm_method == PM_METHOD_DPM)
  return radeon_pm_init_dpm(rdev);
 else
  return radeon_pm_init_old(rdev);
}
