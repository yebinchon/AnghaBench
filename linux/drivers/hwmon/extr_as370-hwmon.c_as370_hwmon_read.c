
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct as370_hwmon {scalar_t__ base; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int BN_MASK ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int EOPNOTSUPP ;
 scalar_t__ STS ;
 struct as370_hwmon* dev_get_drvdata (struct device*) ;

 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int as370_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
       u32 attr, int channel, long *temp)
{
 int val;
 struct as370_hwmon *hwmon = dev_get_drvdata(dev);

 switch (attr) {
 case 128:
  val = readl_relaxed(hwmon->base + STS) & BN_MASK;
  *temp = DIV_ROUND_CLOSEST(val * 251802, 4096) - 85525;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
