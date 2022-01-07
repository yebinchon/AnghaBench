
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int ucEngineClockHigh; int ucMemoryClockHigh; int usVDDC; int usMemoryClockLow; int usEngineClockLow; } ;
struct TYPE_12__ {int ucEngineClockHigh; int ucMemoryClockHigh; int usVDDCI; int usVDDC; int usMemoryClockLow; int usEngineClockLow; } ;
struct TYPE_18__ {int ucEngineClockHigh; int ucMemoryClockHigh; int usVDDCI; int usVDDC; int usMemoryClockLow; int usEngineClockLow; } ;
struct TYPE_16__ {int ucEngineClockHigh; int ucMemoryClockHigh; int usMemoryClockLow; int usEngineClockLow; } ;
struct TYPE_15__ {int ucLowEngineClockHigh; int usLowEngineClockLow; } ;
struct TYPE_14__ {int ucEngineClockHigh; int usEngineClockLow; } ;
union pplib_clock_info {TYPE_2__ r600; TYPE_1__ evergreen; TYPE_7__ si; TYPE_5__ ci; TYPE_4__ rs780; TYPE_3__ sumo; } ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_20__ {TYPE_8__* power_state; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_9__ pm; } ;
struct TYPE_19__ {TYPE_10__* clock_info; } ;
struct TYPE_17__ {int voltage; void* type; void* vddci; } ;
struct TYPE_11__ {int sclk; int mclk; TYPE_6__ voltage; } ;
 scalar_t__ CHIP_BONAIRE ;
 scalar_t__ CHIP_CEDAR ;
 scalar_t__ CHIP_PALM ;
 scalar_t__ CHIP_TAHITI ;
 int RADEON_IS_IGP ;
 void* VOLTAGE_NONE ;
 void* VOLTAGE_SW ;
 int VOLTAGE_TYPE_VDDC ;
 void* le16_to_cpu (int ) ;
 int radeon_atom_get_max_vddc (struct radeon_device*,int ,int,int*) ;

__attribute__((used)) static bool radeon_atombios_parse_pplib_clock_info(struct radeon_device *rdev,
         int state_index, int mode_index,
         union pplib_clock_info *clock_info)
{
 u32 sclk, mclk;
 u16 vddc;

 if (rdev->flags & RADEON_IS_IGP) {
  if (rdev->family >= CHIP_PALM) {
   sclk = le16_to_cpu(clock_info->sumo.usEngineClockLow);
   sclk |= clock_info->sumo.ucEngineClockHigh << 16;
   rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  } else {
   sclk = le16_to_cpu(clock_info->rs780.usLowEngineClockLow);
   sclk |= clock_info->rs780.ucLowEngineClockHigh << 16;
   rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  }
 } else if (rdev->family >= CHIP_BONAIRE) {
  sclk = le16_to_cpu(clock_info->ci.usEngineClockLow);
  sclk |= clock_info->ci.ucEngineClockHigh << 16;
  mclk = le16_to_cpu(clock_info->ci.usMemoryClockLow);
  mclk |= clock_info->ci.ucMemoryClockHigh << 16;
  rdev->pm.power_state[state_index].clock_info[mode_index].mclk = mclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.type =
   VOLTAGE_NONE;
 } else if (rdev->family >= CHIP_TAHITI) {
  sclk = le16_to_cpu(clock_info->si.usEngineClockLow);
  sclk |= clock_info->si.ucEngineClockHigh << 16;
  mclk = le16_to_cpu(clock_info->si.usMemoryClockLow);
  mclk |= clock_info->si.ucMemoryClockHigh << 16;
  rdev->pm.power_state[state_index].clock_info[mode_index].mclk = mclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.type =
   VOLTAGE_SW;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage =
   le16_to_cpu(clock_info->si.usVDDC);
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.vddci =
   le16_to_cpu(clock_info->si.usVDDCI);
 } else if (rdev->family >= CHIP_CEDAR) {
  sclk = le16_to_cpu(clock_info->evergreen.usEngineClockLow);
  sclk |= clock_info->evergreen.ucEngineClockHigh << 16;
  mclk = le16_to_cpu(clock_info->evergreen.usMemoryClockLow);
  mclk |= clock_info->evergreen.ucMemoryClockHigh << 16;
  rdev->pm.power_state[state_index].clock_info[mode_index].mclk = mclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.type =
   VOLTAGE_SW;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage =
   le16_to_cpu(clock_info->evergreen.usVDDC);
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.vddci =
   le16_to_cpu(clock_info->evergreen.usVDDCI);
 } else {
  sclk = le16_to_cpu(clock_info->r600.usEngineClockLow);
  sclk |= clock_info->r600.ucEngineClockHigh << 16;
  mclk = le16_to_cpu(clock_info->r600.usMemoryClockLow);
  mclk |= clock_info->r600.ucMemoryClockHigh << 16;
  rdev->pm.power_state[state_index].clock_info[mode_index].mclk = mclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].sclk = sclk;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.type =
   VOLTAGE_SW;
  rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage =
   le16_to_cpu(clock_info->r600.usVDDC);
 }


 switch (rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (radeon_atom_get_max_vddc(rdev, VOLTAGE_TYPE_VDDC,
          rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage,
          &vddc) == 0)
   rdev->pm.power_state[state_index].clock_info[mode_index].voltage.voltage = vddc;
  break;
 default:
  break;
 }

 if (rdev->flags & RADEON_IS_IGP) {

  if (rdev->pm.power_state[state_index].clock_info[mode_index].sclk == 0)
   return 0;
 } else {

  if ((rdev->pm.power_state[state_index].clock_info[mode_index].mclk == 0) ||
      (rdev->pm.power_state[state_index].clock_info[mode_index].sclk == 0))
   return 0;
 }
 return 1;
}
