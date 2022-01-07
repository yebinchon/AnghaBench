
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int channels; } ;


 int kfree (int ) ;

__attribute__((used)) static void tiadc_channels_remove(struct iio_dev *indio_dev)
{
 kfree(indio_dev->channels);
}
