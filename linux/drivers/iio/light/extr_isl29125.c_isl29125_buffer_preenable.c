
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29125_data {int conf1; int client; } ;
struct iio_dev {int dummy; } ;


 int ISL29125_CONF1 ;
 int ISL29125_MODE_RGB ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct isl29125_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int isl29125_buffer_preenable(struct iio_dev *indio_dev)
{
 struct isl29125_data *data = iio_priv(indio_dev);

 data->conf1 |= ISL29125_MODE_RGB;
 return i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
  data->conf1);
}
