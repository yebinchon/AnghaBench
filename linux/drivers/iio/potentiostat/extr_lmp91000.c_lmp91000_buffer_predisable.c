
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int cb_buffer; } ;
struct iio_dev {int dummy; } ;


 int iio_channel_stop_all_cb (int ) ;
 struct lmp91000_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int lmp91000_buffer_predisable(struct iio_dev *indio_dev)
{
 struct lmp91000_data *data = iio_priv(indio_dev);

 iio_channel_stop_all_cb(data->cb_buffer);

 return 0;
}
