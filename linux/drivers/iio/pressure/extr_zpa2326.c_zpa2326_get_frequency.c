
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpa2326_private {TYPE_1__* frequency; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int hz; } ;


 scalar_t__ iio_priv (struct iio_dev const*) ;

__attribute__((used)) static int zpa2326_get_frequency(const struct iio_dev *indio_dev)
{
 return ((struct zpa2326_private *)iio_priv(indio_dev))->frequency->hz;
}
