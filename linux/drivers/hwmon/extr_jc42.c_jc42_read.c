
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jc42_data {int* temp; size_t config; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct jc42_data*) ;
 int JC42_ALARM_CRIT_BIT ;
 int JC42_ALARM_MAX_BIT ;
 int JC42_ALARM_MIN_BIT ;
 size_t JC42_CFG_HYST_MASK ;
 size_t JC42_CFG_HYST_SHIFT ;
 int PTR_ERR (struct jc42_data*) ;
 int* jc42_hysteresis ;
 void* jc42_temp_from_reg (int) ;
 struct jc42_data* jc42_update_device (struct device*) ;
 size_t t_crit ;
 size_t t_input ;
 size_t t_max ;
 size_t t_min ;

__attribute__((used)) static int jc42_read(struct device *dev, enum hwmon_sensor_types type,
       u32 attr, int channel, long *val)
{
 struct jc42_data *data = jc42_update_device(dev);
 int temp, hyst;

 if (IS_ERR(data))
  return PTR_ERR(data);

 switch (attr) {
 case 133:
  *val = jc42_temp_from_reg(data->temp[t_input]);
  return 0;
 case 129:
  *val = jc42_temp_from_reg(data->temp[t_min]);
  return 0;
 case 132:
  *val = jc42_temp_from_reg(data->temp[t_max]);
  return 0;
 case 136:
  *val = jc42_temp_from_reg(data->temp[t_crit]);
  return 0;
 case 130:
  temp = jc42_temp_from_reg(data->temp[t_max]);
  hyst = jc42_hysteresis[(data->config & JC42_CFG_HYST_MASK)
      >> JC42_CFG_HYST_SHIFT];
  *val = temp - hyst;
  return 0;
 case 134:
  temp = jc42_temp_from_reg(data->temp[t_crit]);
  hyst = jc42_hysteresis[(data->config & JC42_CFG_HYST_MASK)
      >> JC42_CFG_HYST_SHIFT];
  *val = temp - hyst;
  return 0;
 case 128:
  *val = (data->temp[t_input] >> JC42_ALARM_MIN_BIT) & 1;
  return 0;
 case 131:
  *val = (data->temp[t_input] >> JC42_ALARM_MAX_BIT) & 1;
  return 0;
 case 135:
  *val = (data->temp[t_input] >> JC42_ALARM_CRIT_BIT) & 1;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
