
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ad7606_state {scalar_t__ base_address; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int insw (unsigned long,void*,int) ;

__attribute__((used)) static int ad7606_par16_read_block(struct device *dev,
       int count, void *buf)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct ad7606_state *st = iio_priv(indio_dev);

 insw((unsigned long)st->base_address, buf, count);

 return 0;
}
