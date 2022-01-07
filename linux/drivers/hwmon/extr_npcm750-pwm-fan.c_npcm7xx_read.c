
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;


 int npcm7xx_read_fan (struct device*,int ,int,long*) ;
 int npcm7xx_read_pwm (struct device*,int ,int,long*) ;

__attribute__((used)) static int npcm7xx_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{
 switch (type) {
 case 128:
  return npcm7xx_read_pwm(dev, attr, channel, val);
 case 129:
  return npcm7xx_read_fan(dev, attr, channel, val);
 default:
  return -EOPNOTSUPP;
 }
}
