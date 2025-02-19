
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rv7xx_pl {scalar_t__ vddc; } ;
struct radeon_device {int dummy; } ;
struct TYPE_6__ {struct rv7xx_pl* pl; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;
struct TYPE_9__ {int ACIndex; int arbValue; } ;
struct TYPE_7__ {int flags; TYPE_4__* levels; } ;
struct TYPE_8__ {TYPE_2__ ULVState; } ;
typedef TYPE_3__ RV770_SMC_STATETABLE ;


 int BTC_CGULVCONTROL_DFLT ;
 int BTC_CGULVPARAMETER_DFLT ;
 int CG_ULV_CONTROL ;
 int CG_ULV_PARAMETER ;
 int EINVAL ;
 int MC_CG_ARB_FREQ_F0 ;
 int PPSMC_DISPLAY_WATERMARK_LOW ;
 int PPSMC_SWSTATE_FLAG_DC ;
 int WREG32 (int ,int ) ;
 int cypress_convert_power_level_to_smc (struct radeon_device*,struct rv7xx_pl*,TYPE_4__*,int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static int btc_populate_ulv_state(struct radeon_device *rdev,
      RV770_SMC_STATETABLE *table)
{
 int ret = -EINVAL;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct rv7xx_pl *ulv_pl = eg_pi->ulv.pl;

 if (ulv_pl->vddc) {
  ret = cypress_convert_power_level_to_smc(rdev,
        ulv_pl,
        &table->ULVState.levels[0],
        PPSMC_DISPLAY_WATERMARK_LOW);
  if (ret == 0) {
   table->ULVState.levels[0].arbValue = MC_CG_ARB_FREQ_F0;
   table->ULVState.levels[0].ACIndex = 1;

   table->ULVState.levels[1] = table->ULVState.levels[0];
   table->ULVState.levels[2] = table->ULVState.levels[0];

   table->ULVState.flags |= PPSMC_SWSTATE_FLAG_DC;

   WREG32(CG_ULV_CONTROL, BTC_CGULVCONTROL_DFLT);
   WREG32(CG_ULV_PARAMETER, BTC_CGULVPARAMETER_DFLT);
  }
 }

 return ret;
}
