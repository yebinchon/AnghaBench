
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scmi_sensor_info {scalar_t__ scale; int type; } ;
typedef scalar_t__ s8 ;



 int E2BIG ;




 int __pow10 (int) ;
 int abs (scalar_t__) ;
 int div64_u64 (int ,int ) ;

__attribute__((used)) static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
{
 s8 scale = sensor->scale;
 u64 f;

 switch (sensor->type) {
 case 129:
 case 128:
 case 132:
  scale += 3;
  break;
 case 130:
 case 131:
  scale += 6;
  break;
 default:
  break;
 }

 if (scale == 0)
  return 0;

 if (abs(scale) > 19)
  return -E2BIG;

 f = __pow10(abs(scale));
 if (scale > 0)
  *value *= f;
 else
  *value = div64_u64(*value, f);

 return 0;
}
