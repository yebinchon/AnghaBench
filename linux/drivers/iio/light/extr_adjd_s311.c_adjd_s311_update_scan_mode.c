
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int scan_bytes; } ;
struct adjd_s311_data {int * buffer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static int adjd_s311_update_scan_mode(struct iio_dev *indio_dev,
 const unsigned long *scan_mask)
{
 struct adjd_s311_data *data = iio_priv(indio_dev);

 kfree(data->buffer);
 data->buffer = kmalloc(indio_dev->scan_bytes, GFP_KERNEL);
 if (data->buffer == ((void*)0))
  return -ENOMEM;

 return 0;
}
