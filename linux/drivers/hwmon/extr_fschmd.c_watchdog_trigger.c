
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fschmd_data {size_t kind; int watchdog_lock; int watchdog_control; int client; } ;


 int ENODEV ;
 int * FSCHMD_REG_WDOG_CONTROL ;
 int FSCHMD_WDOG_CONTROL_TRIGGER ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int watchdog_trigger(struct fschmd_data *data)
{
 int ret = 0;

 mutex_lock(&data->watchdog_lock);
 if (!data->client) {
  ret = -ENODEV;
  goto leave;
 }

 data->watchdog_control |= FSCHMD_WDOG_CONTROL_TRIGGER;
 i2c_smbus_write_byte_data(data->client,
      FSCHMD_REG_WDOG_CONTROL[data->kind],
      data->watchdog_control);
leave:
 mutex_unlock(&data->watchdog_lock);
 return ret;
}
