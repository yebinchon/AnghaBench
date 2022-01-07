
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int count; TYPE_1__* entries; } ;
struct si_power_info {TYPE_2__ leakage_voltage; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int leakage_index; int voltage; } ;


 int EAGAIN ;
 int EINVAL ;
 int SISLANDS_LEAKAGE_INDEX0 ;
 int SISLANDS_MAX_LEAKAGE_COUNT ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_get_leakage_voltage_from_leakage_index(struct amdgpu_device *adev,
           u32 index, u16 *leakage_voltage)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 int i;

 if (leakage_voltage == ((void*)0))
  return -EINVAL;

 if ((index & 0xff00) != 0xff00)
  return -EINVAL;

 if ((index & 0xff) > SISLANDS_MAX_LEAKAGE_COUNT + 1)
  return -EINVAL;

 if (index < SISLANDS_LEAKAGE_INDEX0)
  return -EINVAL;

 for (i = 0; i < si_pi->leakage_voltage.count; i++) {
  if (si_pi->leakage_voltage.entries[i].leakage_index == index) {
   *leakage_voltage = si_pi->leakage_voltage.entries[i].voltage;
   return 0;
  }
 }
 return -EAGAIN;
}
