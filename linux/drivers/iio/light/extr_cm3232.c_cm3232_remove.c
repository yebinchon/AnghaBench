
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int CM3232_CMD_ALS_DISABLE ;
 int CM3232_REG_ADDR_CMD ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int iio_device_unregister (struct iio_dev*) ;

__attribute__((used)) static int cm3232_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 i2c_smbus_write_byte_data(client, CM3232_REG_ADDR_CMD,
  CM3232_CMD_ALS_DISABLE);

 iio_device_unregister(indio_dev);

 return 0;
}
