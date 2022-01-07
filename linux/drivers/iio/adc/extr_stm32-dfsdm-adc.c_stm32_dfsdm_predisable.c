
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ currentmode; } ;


 scalar_t__ INDIO_BUFFER_TRIGGERED ;
 int __stm32_dfsdm_predisable (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int stm32_dfsdm_predisable(struct iio_dev *indio_dev)
{
 __stm32_dfsdm_predisable(indio_dev);

 if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED)
  iio_triggered_buffer_predisable(indio_dev);

 return 0;
}
