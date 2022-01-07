
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct rv7xx_power_info {int sram_end; int state_table_start; scalar_t__ mem_gddr5; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_8__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_9__ {int int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_10__ {int initialState; int ULVState; int driverState; int systemFlags; int thermalProtectType; } ;
struct ni_power_info {TYPE_3__ smc_statetable; } ;
typedef TYPE_3__ NISLANDS_SMC_STATETABLE ;


 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ;
 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ;
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ;
 int NISLANDS_INITIAL_STATE_ARB_INDEX ;
 int PPSMC_SYSTEMFLAG_GDDR5 ;
 int PPSMC_SYSTEMFLAG_GPIO_DC ;
 int PPSMC_SYSTEMFLAG_REGULATOR_HOT ;
 int PPSMC_SYSTEMFLAG_STEPVDDC ;
 int PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ;
 int PPSMC_THERMAL_PROTECT_TYPE_NONE ;



 int memset (TYPE_3__*,int ,int) ;
 int ni_do_program_memory_timing_parameters (struct radeon_device*,struct radeon_ps*,int ) ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 int ni_populate_smc_acpi_state (struct radeon_device*,TYPE_3__*) ;
 int ni_populate_smc_initial_state (struct radeon_device*,struct radeon_ps*,TYPE_3__*) ;
 int ni_populate_smc_voltage_tables (struct radeon_device*,TYPE_3__*) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ni_init_smc_table(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 int ret;
 struct radeon_ps *radeon_boot_state = rdev->pm.dpm.boot_ps;
 NISLANDS_SMC_STATETABLE *table = &ni_pi->smc_statetable;

 memset(table, 0, sizeof(NISLANDS_SMC_STATETABLE));

 ni_populate_smc_voltage_tables(rdev, table);

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

 ret = ni_populate_smc_initial_state(rdev, radeon_boot_state, table);
 if (ret)
  return ret;

 ret = ni_populate_smc_acpi_state(rdev, table);
 if (ret)
  return ret;

 table->driverState = table->initialState;

 table->ULVState = table->initialState;

 ret = ni_do_program_memory_timing_parameters(rdev, radeon_boot_state,
           NISLANDS_INITIAL_STATE_ARB_INDEX);
 if (ret)
  return ret;

 return rv770_copy_bytes_to_smc(rdev, pi->state_table_start, (u8 *)table,
           sizeof(NISLANDS_SMC_STATETABLE), pi->sram_end);
}
