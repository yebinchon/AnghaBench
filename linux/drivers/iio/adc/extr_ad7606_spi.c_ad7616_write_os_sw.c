
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad7606_state {TYPE_1__* bops; } ;
struct TYPE_2__ {int (* write_mask ) (struct ad7606_state*,int ,int ,int) ;} ;


 int AD7616_CONFIGURATION_REGISTER ;
 int AD7616_OS_MASK ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int stub1 (struct ad7606_state*,int ,int ,int) ;

__attribute__((used)) static int ad7616_write_os_sw(struct iio_dev *indio_dev, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 return st->bops->write_mask(st, AD7616_CONFIGURATION_REGISTER,
         AD7616_OS_MASK, val << 2);
}
