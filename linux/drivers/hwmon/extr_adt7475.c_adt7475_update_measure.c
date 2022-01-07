
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int alarms; int has_voltage; int** voltage; int** temp; int** tach; int** pwm; int vid; scalar_t__ has_vid; int has_pwm2; int has_fan4; struct i2c_client* client; } ;


 int ADT7475_PWM_COUNT ;
 int ADT7475_TACH_COUNT ;
 int ADT7475_TEMP_COUNT ;
 int ADT7475_VOLTAGE_COUNT ;
 size_t INPUT ;
 int PWM_REG (int) ;
 int REG_EXTEND1 ;
 int REG_EXTEND2 ;
 int REG_EXTEND3 ;
 int REG_STATUS1 ;
 int REG_STATUS2 ;
 int REG_STATUS4 ;
 int REG_VID ;
 int REG_VTT ;
 int TACH_REG (int) ;
 int TEMP_REG (int) ;
 int VOLTAGE_REG (int) ;
 int adt7475_read (int ) ;
 int adt7475_read_word (struct i2c_client*,int ) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int adt7475_update_measure(struct device *dev)
{
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u16 ext;
 int i;
 int ret;

 ret = adt7475_read(REG_STATUS2);
 if (ret < 0)
  return ret;
 data->alarms = ret << 8;

 ret = adt7475_read(REG_STATUS1);
 if (ret < 0)
  return ret;
 data->alarms |= ret;

 ret = adt7475_read(REG_EXTEND2);
 if (ret < 0)
  return ret;

 ext = (ret << 8);

 ret = adt7475_read(REG_EXTEND1);
 if (ret < 0)
  return ret;

 ext |= ret;

 for (i = 0; i < ADT7475_VOLTAGE_COUNT; i++) {
  if (!(data->has_voltage & (1 << i)))
   continue;
  ret = adt7475_read(VOLTAGE_REG(i));
  if (ret < 0)
   return ret;
  data->voltage[INPUT][i] =
   (ret << 2) |
   ((ext >> (i * 2)) & 3);
 }

 for (i = 0; i < ADT7475_TEMP_COUNT; i++) {
  ret = adt7475_read(TEMP_REG(i));
  if (ret < 0)
   return ret;
  data->temp[INPUT][i] =
   (ret << 2) |
   ((ext >> ((i + 5) * 2)) & 3);
 }

 if (data->has_voltage & (1 << 5)) {
  ret = adt7475_read(REG_STATUS4);
  if (ret < 0)
   return ret;
  data->alarms |= ret << 24;

  ret = adt7475_read(REG_EXTEND3);
  if (ret < 0)
   return ret;
  ext = ret;

  ret = adt7475_read(REG_VTT);
  if (ret < 0)
   return ret;
  data->voltage[INPUT][5] = ret << 2 |
   ((ext >> 4) & 3);
 }

 for (i = 0; i < ADT7475_TACH_COUNT; i++) {
  if (i == 3 && !data->has_fan4)
   continue;
  ret = adt7475_read_word(client, TACH_REG(i));
  if (ret < 0)
   return ret;
  data->tach[INPUT][i] = ret;
 }


 for (i = 0; i < ADT7475_PWM_COUNT; i++) {
  if (i == 1 && !data->has_pwm2)
   continue;
  ret = adt7475_read(PWM_REG(i));
  if (ret < 0)
   return ret;
  data->pwm[INPUT][i] = ret;
 }

 if (data->has_vid) {
  ret = adt7475_read(REG_VID);
  if (ret < 0)
   return ret;
  data->vid = ret & 0x3f;
 }

 return 0;
}
