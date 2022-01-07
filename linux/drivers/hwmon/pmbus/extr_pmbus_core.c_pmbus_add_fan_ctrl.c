
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pmbus_sensor {int dummy; } ;
struct pmbus_data {TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int* func; } ;


 int ENOMEM ;
 int PMBUS_HAVE_PWM12 ;
 int PMBUS_HAVE_PWM34 ;
 scalar_t__ PMBUS_VIRT_FAN_TARGET_1 ;
 scalar_t__ PMBUS_VIRT_PWM_1 ;
 scalar_t__ PMBUS_VIRT_PWM_ENABLE_1 ;
 int PSC_FAN ;
 int PSC_PWM ;
 struct pmbus_sensor* pmbus_add_sensor (struct pmbus_data*,char*,char*,int,int,scalar_t__,int ,int,int,int) ;

__attribute__((used)) static int pmbus_add_fan_ctrl(struct i2c_client *client,
  struct pmbus_data *data, int index, int page, int id,
  u8 config)
{
 struct pmbus_sensor *sensor;

 sensor = pmbus_add_sensor(data, "fan", "target", index, page,
      PMBUS_VIRT_FAN_TARGET_1 + id, PSC_FAN,
      0, 0, 1);

 if (!sensor)
  return -ENOMEM;

 if (!((data->info->func[page] & PMBUS_HAVE_PWM12) ||
   (data->info->func[page] & PMBUS_HAVE_PWM34)))
  return 0;

 sensor = pmbus_add_sensor(data, "pwm", ((void*)0), index, page,
      PMBUS_VIRT_PWM_1 + id, PSC_PWM,
      0, 0, 1);

 if (!sensor)
  return -ENOMEM;

 sensor = pmbus_add_sensor(data, "pwm", "enable", index, page,
      PMBUS_VIRT_PWM_ENABLE_1 + id, PSC_PWM,
      1, 0, 0);

 if (!sensor)
  return -ENOMEM;

 return 0;
}
