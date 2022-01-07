
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms5611_state {int client; } ;
struct device {int dummy; } ;


 int MS5611_RESET ;
 int dev_to_iio_dev (struct device*) ;
 struct ms5611_state* iio_priv (int ) ;
 int spi_write_then_read (int ,int *,int,int *,int ) ;

__attribute__((used)) static int ms5611_spi_reset(struct device *dev)
{
 u8 cmd = MS5611_RESET;
 struct ms5611_state *st = iio_priv(dev_to_iio_dev(dev));

 return spi_write_then_read(st->client, &cmd, 1, ((void*)0), 0);
}
