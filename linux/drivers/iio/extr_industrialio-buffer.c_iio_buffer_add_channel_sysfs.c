
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; struct iio_buffer* buffer; } ;
struct iio_chan_spec {scalar_t__ type; int scan_index; } ;
struct iio_buffer {int scan_el_dev_attr_list; } ;


 int IIO_SEPARATE ;
 scalar_t__ IIO_TIMESTAMP ;
 int __iio_add_chan_devattr (char*,struct iio_chan_spec const*,int *,int *,int ,int ,int *,int *) ;
 int iio_scan_el_show ;
 int iio_scan_el_store ;
 int iio_scan_el_ts_show ;
 int iio_scan_el_ts_store ;
 int iio_show_fixed_type ;
 int iio_show_scan_index ;

__attribute__((used)) static int iio_buffer_add_channel_sysfs(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan)
{
 int ret, attrcount = 0;
 struct iio_buffer *buffer = indio_dev->buffer;

 ret = __iio_add_chan_devattr("index",
         chan,
         &iio_show_scan_index,
         ((void*)0),
         0,
         IIO_SEPARATE,
         &indio_dev->dev,
         &buffer->scan_el_dev_attr_list);
 if (ret)
  return ret;
 attrcount++;
 ret = __iio_add_chan_devattr("type",
         chan,
         &iio_show_fixed_type,
         ((void*)0),
         0,
         0,
         &indio_dev->dev,
         &buffer->scan_el_dev_attr_list);
 if (ret)
  return ret;
 attrcount++;
 if (chan->type != IIO_TIMESTAMP)
  ret = __iio_add_chan_devattr("en",
          chan,
          &iio_scan_el_show,
          &iio_scan_el_store,
          chan->scan_index,
          0,
          &indio_dev->dev,
          &buffer->scan_el_dev_attr_list);
 else
  ret = __iio_add_chan_devattr("en",
          chan,
          &iio_scan_el_ts_show,
          &iio_scan_el_ts_store,
          chan->scan_index,
          0,
          &indio_dev->dev,
          &buffer->scan_el_dev_attr_list);
 if (ret)
  return ret;
 attrcount++;
 ret = attrcount;
 return ret;
}
