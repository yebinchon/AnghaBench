
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {size_t current_power_state_index; size_t default_power_state_index; scalar_t__ pm_method; scalar_t__ dynpm_state; int mutex; int dynpm_idle_work; TYPE_3__* power_state; int current_vddci; int current_vddc; scalar_t__ default_mclk; scalar_t__ current_mclk; scalar_t__ default_sclk; scalar_t__ current_sclk; scalar_t__ current_clock_mode_index; scalar_t__ default_vddci; scalar_t__ default_vddc; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ pm; scalar_t__ mc_fw; } ;
struct TYPE_7__ {TYPE_2__* clock_info; } ;
struct TYPE_5__ {int vddci; int voltage; } ;
struct TYPE_6__ {TYPE_1__ voltage; } ;


 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAYMAN ;
 scalar_t__ DYNPM_STATE_ACTIVE ;
 scalar_t__ DYNPM_STATE_SUSPENDED ;
 scalar_t__ PM_METHOD_DYNPM ;
 int RADEON_IDLE_LOOP_MS ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_atom_set_voltage (struct radeon_device*,scalar_t__,int ) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 int radeon_set_engine_clock (struct radeon_device*,scalar_t__) ;
 int radeon_set_memory_clock (struct radeon_device*,scalar_t__) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void radeon_pm_resume_old(struct radeon_device *rdev)
{

 if ((rdev->family >= CHIP_BARTS) &&
     (rdev->family <= CHIP_CAYMAN) &&
     rdev->mc_fw) {
  if (rdev->pm.default_vddc)
   radeon_atom_set_voltage(rdev, rdev->pm.default_vddc,
      SET_VOLTAGE_TYPE_ASIC_VDDC);
  if (rdev->pm.default_vddci)
   radeon_atom_set_voltage(rdev, rdev->pm.default_vddci,
      SET_VOLTAGE_TYPE_ASIC_VDDCI);
  if (rdev->pm.default_sclk)
   radeon_set_engine_clock(rdev, rdev->pm.default_sclk);
  if (rdev->pm.default_mclk)
   radeon_set_memory_clock(rdev, rdev->pm.default_mclk);
 }

 mutex_lock(&rdev->pm.mutex);
 rdev->pm.current_power_state_index = rdev->pm.default_power_state_index;
 rdev->pm.current_clock_mode_index = 0;
 rdev->pm.current_sclk = rdev->pm.default_sclk;
 rdev->pm.current_mclk = rdev->pm.default_mclk;
 if (rdev->pm.power_state) {
  rdev->pm.current_vddc = rdev->pm.power_state[rdev->pm.default_power_state_index].clock_info[0].voltage.voltage;
  rdev->pm.current_vddci = rdev->pm.power_state[rdev->pm.default_power_state_index].clock_info[0].voltage.vddci;
 }
 if (rdev->pm.pm_method == PM_METHOD_DYNPM
     && rdev->pm.dynpm_state == DYNPM_STATE_SUSPENDED) {
  rdev->pm.dynpm_state = DYNPM_STATE_ACTIVE;
  schedule_delayed_work(&rdev->pm.dynpm_idle_work,
          msecs_to_jiffies(RADEON_IDLE_LOOP_MS));
 }
 mutex_unlock(&rdev->pm.mutex);
 radeon_pm_compute_clocks(rdev);
}
