
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad5360_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 unsigned int AD5360_ADDR (unsigned int) ;
 unsigned int AD5360_CMD (unsigned int) ;
 int cpu_to_be32 (unsigned int) ;
 struct ad5360_state* iio_priv (struct iio_dev*) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5360_write_unlocked(struct iio_dev *indio_dev,
 unsigned int cmd, unsigned int addr, unsigned int val,
 unsigned int shift)
{
 struct ad5360_state *st = iio_priv(indio_dev);

 val <<= shift;
 val |= AD5360_CMD(cmd) | AD5360_ADDR(addr);
 st->data[0].d32 = cpu_to_be32(val);

 return spi_write(st->spi, &st->data[0].d8[1], 3);
}
