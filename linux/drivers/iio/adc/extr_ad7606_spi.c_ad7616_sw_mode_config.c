
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int channels; } ;
struct ad7606_state {TYPE_1__* bops; int * write_os; int write_scale; } ;
struct TYPE_2__ {int (* write_mask ) (struct ad7606_state*,int ,int,int) ;} ;


 int AD7616_BURST_MODE ;
 int AD7616_CONFIGURATION_REGISTER ;
 int AD7616_SEQEN_MODE ;
 int ad7616_sw_channels ;
 int ad7616_write_os_sw ;
 int ad7616_write_scale_sw ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int stub1 (struct ad7606_state*,int ,int,int) ;

__attribute__((used)) static int ad7616_sw_mode_config(struct iio_dev *indio_dev)
{
 struct ad7606_state *st = iio_priv(indio_dev);





 indio_dev->channels = ad7616_sw_channels;

 st->write_scale = ad7616_write_scale_sw;
 st->write_os = &ad7616_write_os_sw;


 return st->bops->write_mask(st,
         AD7616_CONFIGURATION_REGISTER,
         AD7616_BURST_MODE | AD7616_SEQEN_MODE,
         AD7616_BURST_MODE | AD7616_SEQEN_MODE);
}
