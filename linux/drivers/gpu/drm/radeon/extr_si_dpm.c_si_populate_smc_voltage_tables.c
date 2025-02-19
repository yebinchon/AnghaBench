
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_19__ {size_t count; scalar_t__ phase_delay; int mask_low; TYPE_1__* entries; } ;
struct si_power_info {int svc_gpio_id; int svd_gpio_id; int vddc_phase_shed_control; TYPE_8__ vddc_phase_shed_table; TYPE_8__ mvdd_voltage_table; scalar_t__ voltage_control_svi2; } ;
struct rv7xx_power_info {scalar_t__ max_vddc_in_table; } ;
struct TYPE_14__ {int phase_shedding_limits_table; } ;
struct TYPE_15__ {TYPE_3__ dyn_state; } ;
struct TYPE_16__ {TYPE_4__ dpm; } ;
struct radeon_device {TYPE_5__ pm; } ;
struct evergreen_power_info {TYPE_8__ vddci_voltage_table; TYPE_8__ vddc_voltage_table; } ;
struct TYPE_17__ {void** lowMask; } ;
struct TYPE_13__ {void** lowMask; } ;
struct TYPE_18__ {size_t maxVDDCIndexInPPTable; TYPE_6__ phaseMaskTable; TYPE_2__ voltageMaskTable; } ;
struct TYPE_12__ {scalar_t__ value; } ;
typedef TYPE_7__ SISLANDS_SMC_STATETABLE ;


 size_t SISLANDS_SMC_VOLTAGEMASK_MVDD ;
 size_t SISLANDS_SMC_VOLTAGEMASK_VDDC ;
 size_t SISLANDS_SMC_VOLTAGEMASK_VDDCI ;
 size_t SISLANDS_SMC_VOLTAGEMASK_VDDC_PHASE_SHEDDING ;
 int SI_SMC_SOFT_REGISTER_phase_shedding_delay ;
 int SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svc ;
 int SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svd ;
 int SI_SMC_SOFT_REGISTER_svi_rework_plat_type ;
 void* cpu_to_be32 (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_populate_smc_voltage_table (struct radeon_device*,TYPE_8__*,TYPE_7__*) ;
 scalar_t__ si_validate_phase_shedding_tables (struct radeon_device*,TYPE_8__*,int *) ;
 int si_write_smc_soft_register (struct radeon_device*,int ,int) ;

__attribute__((used)) static int si_populate_smc_voltage_tables(struct radeon_device *rdev,
       SISLANDS_SMC_STATETABLE *table)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);
 u8 i;

 if (si_pi->voltage_control_svi2) {
  si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svc,
   si_pi->svc_gpio_id);
  si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svd,
   si_pi->svd_gpio_id);
  si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_svi_rework_plat_type,
        2);
 } else {
  if (eg_pi->vddc_voltage_table.count) {
   si_populate_smc_voltage_table(rdev, &eg_pi->vddc_voltage_table, table);
   table->voltageMaskTable.lowMask[SISLANDS_SMC_VOLTAGEMASK_VDDC] =
    cpu_to_be32(eg_pi->vddc_voltage_table.mask_low);

   for (i = 0; i < eg_pi->vddc_voltage_table.count; i++) {
    if (pi->max_vddc_in_table <= eg_pi->vddc_voltage_table.entries[i].value) {
     table->maxVDDCIndexInPPTable = i;
     break;
    }
   }
  }

  if (eg_pi->vddci_voltage_table.count) {
   si_populate_smc_voltage_table(rdev, &eg_pi->vddci_voltage_table, table);

   table->voltageMaskTable.lowMask[SISLANDS_SMC_VOLTAGEMASK_VDDCI] =
    cpu_to_be32(eg_pi->vddci_voltage_table.mask_low);
  }


  if (si_pi->mvdd_voltage_table.count) {
   si_populate_smc_voltage_table(rdev, &si_pi->mvdd_voltage_table, table);

   table->voltageMaskTable.lowMask[SISLANDS_SMC_VOLTAGEMASK_MVDD] =
    cpu_to_be32(si_pi->mvdd_voltage_table.mask_low);
  }

  if (si_pi->vddc_phase_shed_control) {
   if (si_validate_phase_shedding_tables(rdev, &si_pi->vddc_phase_shed_table,
             &rdev->pm.dpm.dyn_state.phase_shedding_limits_table)) {
    si_populate_smc_voltage_table(rdev, &si_pi->vddc_phase_shed_table, table);

    table->phaseMaskTable.lowMask[SISLANDS_SMC_VOLTAGEMASK_VDDC_PHASE_SHEDDING] =
     cpu_to_be32(si_pi->vddc_phase_shed_table.mask_low);

    si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_phase_shedding_delay,
          (u32)si_pi->vddc_phase_shed_table.phase_delay);
   } else {
    si_pi->vddc_phase_shed_control = 0;
   }
  }
 }

 return 0;
}
