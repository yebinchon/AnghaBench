
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int initialState; int driverState; int systemFlags; int thermalProtectType; } ;
struct rv7xx_power_info {int sram_end; int state_table_start; scalar_t__ mem_gddr5; TYPE_4__ smc_statetable; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_10__ {int platform_caps; } ;
struct TYPE_11__ {int int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_12__ {int supported; } ;
struct evergreen_power_info {TYPE_3__ ulv; scalar_t__ sclk_deep_sleep; } ;
typedef TYPE_4__ RV770_SMC_STATETABLE ;


 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ;
 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ;
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ;
 int PPSMC_SYSTEMFLAG_GDDR5 ;
 int PPSMC_SYSTEMFLAG_GPIO_DC ;
 int PPSMC_SYSTEMFLAG_REGULATOR_HOT ;
 int PPSMC_SYSTEMFLAG_STEPVDDC ;
 int PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_NONE ;
 int PSKIP_ON_ALLOW_STOP_HI (int) ;
 int PSKIP_ON_ALLOW_STOP_HI_MASK ;
 int SCLK_PSKIP_CNTL ;



 int WREG32_P (int ,int ,int ) ;
 int btc_populate_smc_acpi_state (struct radeon_device*,TYPE_4__*) ;
 int btc_populate_ulv_state (struct radeon_device*,TYPE_4__*) ;
 int cypress_populate_smc_initial_state (struct radeon_device*,struct radeon_ps*,TYPE_4__*) ;
 int cypress_populate_smc_voltage_tables (struct radeon_device*,TYPE_4__*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int memset (TYPE_4__*,int ,int) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int btc_init_smc_table(struct radeon_device *rdev,
         struct radeon_ps *radeon_boot_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 RV770_SMC_STATETABLE *table = &pi->smc_statetable;
 int ret;

 memset(table, 0, sizeof(RV770_SMC_STATETABLE));

 cypress_populate_smc_voltage_tables(rdev, table);

 switch (rdev->pm.int_thermal_type) {
 case 129:
 case 130:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_INTERNAL;
  break;
 case 128:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_NONE;
  break;
 default:
  table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL;
  break;
 }

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_HARDWAREDC)
  table->systemFlags |= PPSMC_SYSTEMFLAG_GPIO_DC;

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_REGULATOR_HOT)
  table->systemFlags |= PPSMC_SYSTEMFLAG_REGULATOR_HOT;

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
  table->systemFlags |= PPSMC_SYSTEMFLAG_STEPVDDC;

 if (pi->mem_gddr5)
  table->systemFlags |= PPSMC_SYSTEMFLAG_GDDR5;

 ret = cypress_populate_smc_initial_state(rdev, radeon_boot_state, table);
 if (ret)
  return ret;

 if (eg_pi->sclk_deep_sleep)
  WREG32_P(SCLK_PSKIP_CNTL, PSKIP_ON_ALLOW_STOP_HI(32),
    ~PSKIP_ON_ALLOW_STOP_HI_MASK);

 ret = btc_populate_smc_acpi_state(rdev, table);
 if (ret)
  return ret;

 if (eg_pi->ulv.supported) {
  ret = btc_populate_ulv_state(rdev, table);
  if (ret)
   eg_pi->ulv.supported = 0;
 }

 table->driverState = table->initialState;

 return rv770_copy_bytes_to_smc(rdev,
           pi->state_table_start,
           (u8 *)table,
           sizeof(RV770_SMC_STATETABLE),
           pi->sram_end);
}
