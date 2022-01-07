
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mux {TYPE_1__* ext_info; int parent; struct iio_chan_spec const* chan; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int name; } ;


 int iio_mux_deselect (struct mux*) ;
 scalar_t__ iio_mux_select (struct mux*,int) ;
 struct mux* iio_priv (struct iio_dev*) ;
 scalar_t__ iio_read_channel_ext_info (int ,int ,char*) ;

__attribute__((used)) static ssize_t mux_read_ext_info(struct iio_dev *indio_dev, uintptr_t private,
     struct iio_chan_spec const *chan, char *buf)
{
 struct mux *mux = iio_priv(indio_dev);
 int idx = chan - mux->chan;
 ssize_t ret;

 ret = iio_mux_select(mux, idx);
 if (ret < 0)
  return ret;

 ret = iio_read_channel_ext_info(mux->parent,
     mux->ext_info[private].name,
     buf);

 iio_mux_deselect(mux);

 return ret;
}
