
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int channels; } ;
struct ad7606_state {unsigned long* oversampling_avail; TYPE_1__* bops; int * write_os; int write_scale; int num_os_ratios; TYPE_2__* gpio_os; } ;
struct TYPE_4__ {int info; int desc; } ;
struct TYPE_3__ {int (* reg_write ) (struct ad7606_state*,int ,int ) ;} ;


 int AD7606_CONFIGURATION_REGISTER ;
 int AD7606_SINGLE_DOUT ;
 int ARRAY_SIZE (unsigned long*) ;
 unsigned long* ad7606B_oversampling_avail ;
 int ad7606_write_os_sw ;
 int ad7606_write_scale_sw ;
 int ad7606b_sw_channels ;
 int gpiod_set_array_value (int ,int ,int ,unsigned long*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int stub1 (struct ad7606_state*,int ,int ) ;

__attribute__((used)) static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
{
 struct ad7606_state *st = iio_priv(indio_dev);
 unsigned long os[3] = {1};







 if (st->gpio_os) {
  gpiod_set_array_value(ARRAY_SIZE(os),
          st->gpio_os->desc, st->gpio_os->info, os);
 }

 st->oversampling_avail = ad7606B_oversampling_avail;
 st->num_os_ratios = ARRAY_SIZE(ad7606B_oversampling_avail);

 st->write_scale = ad7606_write_scale_sw;
 st->write_os = &ad7606_write_os_sw;


 st->bops->reg_write(st,
       AD7606_CONFIGURATION_REGISTER,
       AD7606_SINGLE_DOUT);





 indio_dev->channels = ad7606b_sw_channels;

 return 0;
}
