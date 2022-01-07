
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int* buffer; size_t chan_select; int completion; } ;
struct iio_dev {int dummy; } ;


 int complete_all (int *) ;
 struct lmp91000_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int lmp91000_buffer_cb(const void *val, void *private)
{
 struct iio_dev *indio_dev = private;
 struct lmp91000_data *data = iio_priv(indio_dev);

 data->buffer[data->chan_select] = *((int *)val);
 complete_all(&data->completion);

 return 0;
}
