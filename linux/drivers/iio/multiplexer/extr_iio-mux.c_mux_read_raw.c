
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux {int parent; struct iio_chan_spec const* chan; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int iio_mux_deselect (struct mux*) ;
 int iio_mux_select (struct mux*,int) ;
 struct mux* iio_priv (struct iio_dev*) ;
 int iio_read_channel_raw (int ,int*) ;
 int iio_read_channel_scale (int ,int*,int*) ;

__attribute__((used)) static int mux_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2, long mask)
{
 struct mux *mux = iio_priv(indio_dev);
 int idx = chan - mux->chan;
 int ret;

 ret = iio_mux_select(mux, idx);
 if (ret < 0)
  return ret;

 switch (mask) {
 case 129:
  ret = iio_read_channel_raw(mux->parent, val);
  break;

 case 128:
  ret = iio_read_channel_scale(mux->parent, val, val2);
  break;

 default:
  ret = -EINVAL;
 }

 iio_mux_deselect(mux);

 return ret;
}
