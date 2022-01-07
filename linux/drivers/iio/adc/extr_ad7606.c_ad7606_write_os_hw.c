
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad7606_state {TYPE_2__* chip_info; TYPE_1__* gpio_os; } ;
struct TYPE_4__ {scalar_t__ os_req_reset; } ;
struct TYPE_3__ {int info; int desc; } ;


 int ARRAY_SIZE (int*) ;
 int DECLARE_BITMAP (int*,int) ;
 int ad7606_reset (struct ad7606_state*) ;
 int gpiod_set_array_value (int ,int ,int ,int*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int* values ;

__attribute__((used)) static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);
 DECLARE_BITMAP(values, 3);

 values[0] = val;

 gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
         st->gpio_os->info, values);


 if (st->chip_info->os_req_reset)
  ad7606_reset(st);

 return 0;
}
