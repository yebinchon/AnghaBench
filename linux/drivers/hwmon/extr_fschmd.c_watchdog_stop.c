
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fschmd_data {int watchdog_control; size_t kind; int watchdog_lock; int client; } ;


 int ENODEV ;
 int * FSCHMD_REG_WDOG_CONTROL ;
 int FSCHMD_WDOG_CONTROL_STARTED ;
 int FSCHMD_WDOG_CONTROL_STOP ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int watchdog_stop(struct fschmd_data *data)
{
 int ret = 0;

 mutex_lock(&data->watchdog_lock);
 if (!data->client) {
  ret = -ENODEV;
  goto leave;
 }

 data->watchdog_control &= ~FSCHMD_WDOG_CONTROL_STARTED;




 i2c_smbus_write_byte_data(data->client,
  FSCHMD_REG_WDOG_CONTROL[data->kind],
  data->watchdog_control | FSCHMD_WDOG_CONTROL_STOP);
leave:
 mutex_unlock(&data->watchdog_lock);
 return ret;
}
