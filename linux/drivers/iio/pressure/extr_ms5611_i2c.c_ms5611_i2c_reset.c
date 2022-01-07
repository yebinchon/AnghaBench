
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {int client; } ;
struct device {int dummy; } ;


 int MS5611_RESET ;
 int dev_to_iio_dev (struct device*) ;
 int i2c_smbus_write_byte (int ,int ) ;
 struct ms5611_state* iio_priv (int ) ;

__attribute__((used)) static int ms5611_i2c_reset(struct device *dev)
{
 struct ms5611_state *st = iio_priv(dev_to_iio_dev(dev));

 return i2c_smbus_write_byte(st->client, MS5611_RESET);
}
