
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int CGU_GPHY1_CR ;
 int EOPNOTSUPP ;

 int ltq_cgu_r32 (int ) ;

__attribute__((used)) static int ltq_read(struct device *dev, enum hwmon_sensor_types type,
      u32 attr, int channel, long *temp)
{
 int value;

 switch (attr) {
 case 128:

  value = (ltq_cgu_r32(CGU_GPHY1_CR) >> 9) & 0x01FF;
  value = value * 5;

  value -= 380;

  value = value * 100;
  break;
 default:
  return -EOPNOTSUPP;
 }

 *temp = value;
 return 0;
}
