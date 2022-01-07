
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int class; scalar_t__ dclk; scalar_t__ vclk; void* class2; int caps; } ;
struct TYPE_3__ {struct radeon_ps* uvd_ps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct _ATOM_PPLIB_NONCLOCK_INFO {int usClassification2; int usClassification; int ulCapsAndSettings; } ;


 int ATOM_PPLIB_CLASSIFICATION_BOOT ;
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ;
 scalar_t__ RV6XX_DEFAULT_DCLK_FREQ ;
 scalar_t__ RV6XX_DEFAULT_VCLK_FREQ ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ r600_is_uvd_state (int,void*) ;

__attribute__((used)) static void rv6xx_parse_pplib_non_clock_info(struct radeon_device *rdev,
          struct radeon_ps *rps,
          struct _ATOM_PPLIB_NONCLOCK_INFO *non_clock_info)
{
 rps->caps = le32_to_cpu(non_clock_info->ulCapsAndSettings);
 rps->class = le16_to_cpu(non_clock_info->usClassification);
 rps->class2 = le16_to_cpu(non_clock_info->usClassification2);

 if (r600_is_uvd_state(rps->class, rps->class2)) {
  rps->vclk = RV6XX_DEFAULT_VCLK_FREQ;
  rps->dclk = RV6XX_DEFAULT_DCLK_FREQ;
 } else {
  rps->vclk = 0;
  rps->dclk = 0;
 }

 if (rps->class & ATOM_PPLIB_CLASSIFICATION_BOOT)
  rdev->pm.dpm.boot_ps = rps;
 if (rps->class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
  rdev->pm.dpm.uvd_ps = rps;
}
