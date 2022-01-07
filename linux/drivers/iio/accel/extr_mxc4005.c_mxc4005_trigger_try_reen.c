
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int dready_trig; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mxc4005_clr_intr (struct mxc4005_data*) ;

__attribute__((used)) static int mxc4005_trigger_try_reen(struct iio_trigger *trig)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct mxc4005_data *data = iio_priv(indio_dev);

 if (!data->dready_trig)
  return 0;

 return mxc4005_clr_intr(data);
}
