
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct adt7411_data {int use_ext_temp; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int S_IRUGO ;
 int S_IWUSR ;
__attribute__((used)) static umode_t adt7411_is_visible(const void *_data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 const struct adt7411_data *data = _data;
 bool visible;

 switch (type) {
 case 139:
  visible = channel == 0 || channel >= 3 || !data->use_ext_temp;
  switch (attr) {
  case 137:
  case 138:
   return visible ? S_IRUGO : 0;
  case 135:
  case 136:
   return visible ? S_IRUGO | S_IWUSR : 0;
  }
  break;
 case 134:
  visible = channel == 0 || data->use_ext_temp;
  switch (attr) {
  case 132:
  case 128:
  case 130:
  case 133:
   return visible ? S_IRUGO : 0;
  case 129:
  case 131:
   return visible ? S_IRUGO | S_IWUSR : 0;
  }
  break;
 default:
  break;
 }
 return 0;
}
