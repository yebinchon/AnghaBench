
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk8312_data {scalar_t__ dready_trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int STK8312_MODE_STANDBY ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct stk8312_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (scalar_t__) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int stk8312_set_mode (struct stk8312_data*,int ) ;

__attribute__((used)) static int stk8312_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct stk8312_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);

 if (data->dready_trig)
  iio_trigger_unregister(data->dready_trig);

 return stk8312_set_mode(data, STK8312_MODE_STANDBY);
}
