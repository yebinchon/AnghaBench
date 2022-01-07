
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ trig; } ;


 int iio_trigger_unregister (scalar_t__) ;

__attribute__((used)) static void mma8452_trigger_cleanup(struct iio_dev *indio_dev)
{
 if (indio_dev->trig)
  iio_trigger_unregister(indio_dev->trig);
}
