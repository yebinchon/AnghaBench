
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
typedef int u32 ;
struct TYPE_4__ {int connected; } ;
struct mlxreg_fan {TYPE_2__ pwm; TYPE_1__* tacho; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_3__ {int connected; } ;
__attribute__((used)) static umode_t
mlxreg_fan_is_visible(const void *data, enum hwmon_sensor_types type, u32 attr,
        int channel)
{
 switch (type) {
 case 132:
  if (!(((struct mlxreg_fan *)data)->tacho[channel].connected))
   return 0;

  switch (attr) {
  case 130:
  case 131:
   return 0444;
  default:
   break;
  }
  break;

 case 129:
  if (!(((struct mlxreg_fan *)data)->pwm.connected))
   return 0;

  switch (attr) {
  case 128:
   return 0644;
  default:
   break;
  }
  break;

 default:
  break;
 }

 return 0;
}
