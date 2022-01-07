
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71882fg_data {size_t type; int valid; int temp_start; int* temp_type; int update_lock; void* last_updated; void** in; void* in_status; void** fan; void** pwm; void** fan_full_speed; void** fan_target; void* fan_status; int * temp; void* temp_diode_open; void* temp_status; void* last_limits; void*** pwm_auto_point_temp; void*** pwm_auto_point_pwm; void** pwm_auto_point_mapping; void** pwm_auto_point_hyst; void* pwm_enable; void* temp_beep; void* fan_beep; void** temp_hyst; void** temp_high; void** temp_ovt; void* in_beep; void* in1_max; } ;
struct device {int dummy; } ;


 int F71882FG_MAX_INS ;
 int F71882FG_REG_FAN (int) ;
 int F71882FG_REG_FAN_BEEP ;
 int F71882FG_REG_FAN_FULL_SPEED (int) ;
 int F71882FG_REG_FAN_HYST (int) ;
 int F71882FG_REG_FAN_STATUS ;
 int F71882FG_REG_FAN_TARGET (int) ;
 int F71882FG_REG_IN (int) ;
 int F71882FG_REG_IN1_HIGH ;
 int F71882FG_REG_IN_BEEP ;
 int F71882FG_REG_IN_STATUS ;
 int F71882FG_REG_POINT_MAPPING (int) ;
 int F71882FG_REG_POINT_PWM (int,int) ;
 int F71882FG_REG_POINT_TEMP (int,int) ;
 int F71882FG_REG_PWM (int) ;
 int F71882FG_REG_PWM_ENABLE ;
 int F71882FG_REG_TEMP_BEEP ;
 int F71882FG_REG_TEMP_DIODE_OPEN ;
 int F71882FG_REG_TEMP_HIGH (int) ;
 int F71882FG_REG_TEMP_HYST (int) ;
 int F71882FG_REG_TEMP_OVT (int) ;
 int F71882FG_REG_TEMP_STATUS ;
 int F71882FG_REG_TEMP_TYPE ;
 int F81866_REG_IN1_HIGH ;
 int F81866_REG_IN_BEEP ;
 int F81866_REG_IN_STATUS ;
 int HZ ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71808a ;

 size_t f71858fg ;


 scalar_t__* f71882fg_fan_has_beep ;
 scalar_t__** f71882fg_has_in ;
 scalar_t__* f71882fg_has_in1_alarm ;
 int* f71882fg_nr_fans ;
 int* f71882fg_nr_temps ;
 void* f71882fg_read16 (struct f71882fg_data*,int ) ;
 void* f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_read_temp (struct f71882fg_data*,int) ;
 scalar_t__* f71882fg_temp_has_beep ;
 size_t f8000 ;
 size_t f81866a ;
 void* jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (void*,void*) ;

__attribute__((used)) static struct f71882fg_data *f71882fg_update_device(struct device *dev)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int nr_fans = f71882fg_nr_fans[data->type];
 int nr_temps = f71882fg_nr_temps[data->type];
 int nr, reg, point;

 mutex_lock(&data->update_lock);


 if (time_after(jiffies, data->last_limits + 60 * HZ) ||
   !data->valid) {
  if (f71882fg_has_in1_alarm[data->type]) {
   if (data->type == f81866a) {
    data->in1_max =
     f71882fg_read8(data,
             F81866_REG_IN1_HIGH);
    data->in_beep =
     f71882fg_read8(data,
             F81866_REG_IN_BEEP);
   } else {
    data->in1_max =
     f71882fg_read8(data,
             F71882FG_REG_IN1_HIGH);
    data->in_beep =
     f71882fg_read8(data,
             F71882FG_REG_IN_BEEP);
   }
  }


  for (nr = data->temp_start; nr < nr_temps + data->temp_start;
         nr++) {
   data->temp_ovt[nr] = f71882fg_read8(data,
      F71882FG_REG_TEMP_OVT(nr));
   data->temp_high[nr] = f71882fg_read8(data,
      F71882FG_REG_TEMP_HIGH(nr));
  }

  if (data->type != f8000) {
   data->temp_hyst[0] = f71882fg_read8(data,
      F71882FG_REG_TEMP_HYST(0));
   data->temp_hyst[1] = f71882fg_read8(data,
      F71882FG_REG_TEMP_HYST(1));
  }

  if ((data->type != f71858fg) && (data->type != f8000)) {
   reg = f71882fg_read8(data, F71882FG_REG_TEMP_TYPE);
   data->temp_type[1] = (reg & 0x02) ? 2 : 4;
   data->temp_type[2] = (reg & 0x04) ? 2 : 4;
   data->temp_type[3] = (reg & 0x08) ? 2 : 4;
  }

  if (f71882fg_fan_has_beep[data->type])
   data->fan_beep = f71882fg_read8(data,
      F71882FG_REG_FAN_BEEP);

  if (f71882fg_temp_has_beep[data->type])
   data->temp_beep = f71882fg_read8(data,
      F71882FG_REG_TEMP_BEEP);

  data->pwm_enable = f71882fg_read8(data,
        F71882FG_REG_PWM_ENABLE);
  data->pwm_auto_point_hyst[0] =
   f71882fg_read8(data, F71882FG_REG_FAN_HYST(0));
  data->pwm_auto_point_hyst[1] =
   f71882fg_read8(data, F71882FG_REG_FAN_HYST(1));

  for (nr = 0; nr < nr_fans; nr++) {
   data->pwm_auto_point_mapping[nr] =
       f71882fg_read8(data,
        F71882FG_REG_POINT_MAPPING(nr));

   switch (data->type) {
   default:
    for (point = 0; point < 5; point++) {
     data->pwm_auto_point_pwm[nr][point] =
      f71882fg_read8(data,
       F71882FG_REG_POINT_PWM
       (nr, point));
    }
    for (point = 0; point < 4; point++) {
     data->pwm_auto_point_temp[nr][point] =
      f71882fg_read8(data,
       F71882FG_REG_POINT_TEMP
       (nr, point));
    }
    break;
   case 130:
   case 128:
    data->pwm_auto_point_pwm[nr][0] =
     f71882fg_read8(data,
      F71882FG_REG_POINT_PWM(nr, 0));

   case 129:
    data->pwm_auto_point_pwm[nr][1] =
     f71882fg_read8(data,
      F71882FG_REG_POINT_PWM
      (nr, 1));
    data->pwm_auto_point_pwm[nr][4] =
     f71882fg_read8(data,
      F71882FG_REG_POINT_PWM
      (nr, 4));
    data->pwm_auto_point_temp[nr][0] =
     f71882fg_read8(data,
      F71882FG_REG_POINT_TEMP
      (nr, 0));
    data->pwm_auto_point_temp[nr][3] =
     f71882fg_read8(data,
      F71882FG_REG_POINT_TEMP
      (nr, 3));
    break;
   }
  }
  data->last_limits = jiffies;
 }


 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  data->temp_status = f71882fg_read8(data,
      F71882FG_REG_TEMP_STATUS);
  data->temp_diode_open = f71882fg_read8(data,
      F71882FG_REG_TEMP_DIODE_OPEN);
  for (nr = data->temp_start; nr < nr_temps + data->temp_start;
         nr++)
   data->temp[nr] = f71882fg_read_temp(data, nr);

  data->fan_status = f71882fg_read8(data,
      F71882FG_REG_FAN_STATUS);
  for (nr = 0; nr < nr_fans; nr++) {
   data->fan[nr] = f71882fg_read16(data,
      F71882FG_REG_FAN(nr));
   data->fan_target[nr] =
       f71882fg_read16(data, F71882FG_REG_FAN_TARGET(nr));
   data->fan_full_speed[nr] =
       f71882fg_read16(data,
         F71882FG_REG_FAN_FULL_SPEED(nr));
   data->pwm[nr] =
       f71882fg_read8(data, F71882FG_REG_PWM(nr));
  }

  if (data->type == f71808a) {
   data->fan[2] = f71882fg_read16(data,
      F71882FG_REG_FAN(2));
   data->pwm[2] = f71882fg_read8(data,
       F71882FG_REG_PWM(2));
  }
  if (data->type == f8000)
   data->fan[3] = f71882fg_read16(data,
      F71882FG_REG_FAN(3));

  if (f71882fg_has_in1_alarm[data->type]) {
   if (data->type == f81866a)
    data->in_status = f71882fg_read8(data,
      F81866_REG_IN_STATUS);

   else
    data->in_status = f71882fg_read8(data,
      F71882FG_REG_IN_STATUS);
  }

  for (nr = 0; nr < F71882FG_MAX_INS; nr++)
   if (f71882fg_has_in[data->type][nr])
    data->in[nr] = f71882fg_read8(data,
       F71882FG_REG_IN(nr));

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
