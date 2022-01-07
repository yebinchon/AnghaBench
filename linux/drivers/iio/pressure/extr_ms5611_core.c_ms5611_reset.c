
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {int (* reset ) (int *) ;} ;
struct iio_dev {int dev; } ;


 int dev_err (int *,char*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int stub1 (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ms5611_reset(struct iio_dev *indio_dev)
{
 int ret;
 struct ms5611_state *st = iio_priv(indio_dev);

 ret = st->reset(&indio_dev->dev);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "failed to reset device\n");
  return ret;
 }

 usleep_range(3000, 4000);

 return 0;
}
