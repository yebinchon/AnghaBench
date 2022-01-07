
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_data {scalar_t__ vdd_reg; scalar_t__ vref_reg; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct mcp4725_data* iio_priv (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int mcp4725_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct mcp4725_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (data->vref_reg)
  regulator_disable(data->vref_reg);
 regulator_disable(data->vdd_reg);

 return 0;
}
