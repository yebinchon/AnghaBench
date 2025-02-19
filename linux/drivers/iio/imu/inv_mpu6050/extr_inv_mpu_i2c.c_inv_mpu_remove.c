
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inv_mpu6050_state {scalar_t__ muxc; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (scalar_t__) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu_acpi_delete_mux_client (struct i2c_client*) ;

__attribute__((used)) static int inv_mpu_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct inv_mpu6050_state *st = iio_priv(indio_dev);

 if (st->muxc) {
  inv_mpu_acpi_delete_mux_client(client);
  i2c_mux_del_adapters(st->muxc);
 }

 return 0;
}
