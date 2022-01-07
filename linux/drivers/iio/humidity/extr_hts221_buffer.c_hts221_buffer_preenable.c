
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int hts221_set_enable (int ,int) ;
 int iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hts221_buffer_preenable(struct iio_dev *iio_dev)
{
 return hts221_set_enable(iio_priv(iio_dev), 1);
}
