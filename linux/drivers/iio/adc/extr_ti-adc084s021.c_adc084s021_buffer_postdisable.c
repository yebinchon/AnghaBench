
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct adc084s021 {int reg; TYPE_1__ spi_trans; } ;


 struct adc084s021* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int adc084s021_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct adc084s021 *adc = iio_priv(indio_dev);

 adc->spi_trans.len = 4;

 return regulator_disable(adc->reg);
}
