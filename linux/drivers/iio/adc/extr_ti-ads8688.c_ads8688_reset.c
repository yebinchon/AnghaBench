
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int dummy; } ;
struct ads8688_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 int ADS8688_CMD_DONT_CARE_BITS ;
 int ADS8688_CMD_REG (int ) ;
 int ADS8688_CMD_REG_RST ;
 int cpu_to_be32 (int ) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ads8688_reset(struct iio_dev *indio_dev)
{
 struct ads8688_state *st = iio_priv(indio_dev);
 u32 tmp;

 tmp = ADS8688_CMD_REG(ADS8688_CMD_REG_RST);
 tmp <<= ADS8688_CMD_DONT_CARE_BITS;
 st->data[0].d32 = cpu_to_be32(tmp);

 return spi_write(st->spi, &st->data[0].d8[0], 4);
}
