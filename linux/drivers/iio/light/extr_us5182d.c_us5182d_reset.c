
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int client; } ;
struct iio_dev {int dummy; } ;


 int US5182D_REG_CFG3 ;
 int US5182D_RESET_CHIP ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int us5182d_reset(struct iio_dev *indio_dev)
{
 struct us5182d_data *data = iio_priv(indio_dev);

 return i2c_smbus_write_byte_data(data->client, US5182D_REG_CFG3,
      US5182D_RESET_CHIP);
}
