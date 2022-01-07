
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum radeon_int_thermal_type { ____Placeholder_radeon_int_thermal_type } radeon_int_thermal_type ;
bool r600_is_internal_thermal_sensor(enum radeon_int_thermal_type sensor)
{
 switch (sensor) {
 case 131:
 case 130:
 case 137:
 case 128:
 case 133:
 case 129:
 case 139:
 case 134:
  return 1;
 case 140:
 case 138:
  return 0;
 case 132:
 case 136:
 case 135:
 default:
  return 0;
 }
}
