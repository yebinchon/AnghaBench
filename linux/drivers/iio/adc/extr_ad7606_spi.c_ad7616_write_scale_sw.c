
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad7606_state {TYPE_1__* bops; } ;
struct TYPE_2__ {int (* write_mask ) (struct ad7606_state*,unsigned int,int ,unsigned int) ;} ;


 unsigned int AD7616_RANGE_CH_ADDR (unsigned int) ;
 scalar_t__ AD7616_RANGE_CH_A_ADDR_OFF ;
 scalar_t__ AD7616_RANGE_CH_B_ADDR_OFF ;
 unsigned int AD7616_RANGE_CH_MODE (unsigned int,int) ;
 int AD7616_RANGE_CH_MSK (unsigned int) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int stub1 (struct ad7606_state*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int ad7616_write_scale_sw(struct iio_dev *indio_dev, int ch, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);
 unsigned int ch_addr, mode, ch_index;
 ch_index = ch >> 1;

 ch_addr = AD7616_RANGE_CH_ADDR(ch_index);

 if ((ch & 0x1) == 0)
  ch_addr += AD7616_RANGE_CH_A_ADDR_OFF;
 else
  ch_addr += AD7616_RANGE_CH_B_ADDR_OFF;


 mode = AD7616_RANGE_CH_MODE(ch_index, ((val + 1) & 0b11));
 return st->bops->write_mask(st, ch_addr, AD7616_RANGE_CH_MSK(ch_index),
         mode);
}
