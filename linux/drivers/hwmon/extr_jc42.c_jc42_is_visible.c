
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct jc42_data {unsigned int config; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 unsigned int JC42_CFG_EVENT_LOCK ;
 unsigned int JC42_CFG_TCRIT_LOCK ;
__attribute__((used)) static umode_t jc42_is_visible(const void *_data, enum hwmon_sensor_types type,
          u32 attr, int channel)
{
 const struct jc42_data *data = _data;
 unsigned int config = data->config;
 umode_t mode = 0444;

 switch (attr) {
 case 129:
 case 132:
  if (!(config & JC42_CFG_EVENT_LOCK))
   mode |= 0200;
  break;
 case 136:
  if (!(config & JC42_CFG_TCRIT_LOCK))
   mode |= 0200;
  break;
 case 134:
  if (!(config & (JC42_CFG_EVENT_LOCK | JC42_CFG_TCRIT_LOCK)))
   mode |= 0200;
  break;
 case 133:
 case 130:
 case 128:
 case 131:
 case 135:
  break;
 default:
  mode = 0;
  break;
 }
 return mode;
}
