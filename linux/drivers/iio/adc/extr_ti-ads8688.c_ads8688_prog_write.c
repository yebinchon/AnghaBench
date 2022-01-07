
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct iio_dev {int dummy; } ;
struct ads8688_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 unsigned int ADS8688_PROG_DONT_CARE_BITS ;
 unsigned int ADS8688_PROG_REG (unsigned int) ;
 unsigned int ADS8688_PROG_WR_BIT ;
 int cpu_to_be32 (unsigned int) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ads8688_prog_write(struct iio_dev *indio_dev, unsigned int addr,
         unsigned int val)
{
 struct ads8688_state *st = iio_priv(indio_dev);
 u32 tmp;

 tmp = ADS8688_PROG_REG(addr) | ADS8688_PROG_WR_BIT | val;
 tmp <<= ADS8688_PROG_DONT_CARE_BITS;
 st->data[0].d32 = cpu_to_be32(tmp);

 return spi_write(st->spi, &st->data[0].d8[1], 3);
}
