
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_device_config {int scan_mask; } ;
struct iio_dev {int buffer_list; } ;
struct iio_buffer {int dummy; } ;


 int iio_buffer_activate (struct iio_dev*,struct iio_buffer*) ;
 int iio_buffer_deactivate (struct iio_buffer*) ;
 int iio_buffer_deactivate_all (struct iio_dev*) ;
 int iio_buffer_request_update (struct iio_dev*,struct iio_buffer*) ;
 int iio_disable_buffers (struct iio_dev*) ;
 int iio_enable_buffers (struct iio_dev*,struct iio_device_config*) ;
 int iio_free_scan_mask (struct iio_dev*,int ) ;
 int iio_verify_update (struct iio_dev*,struct iio_buffer*,struct iio_buffer*,struct iio_device_config*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int __iio_update_buffers(struct iio_dev *indio_dev,
         struct iio_buffer *insert_buffer,
         struct iio_buffer *remove_buffer)
{
 struct iio_device_config new_config;
 int ret;

 ret = iio_verify_update(indio_dev, insert_buffer, remove_buffer,
  &new_config);
 if (ret)
  return ret;

 if (insert_buffer) {
  ret = iio_buffer_request_update(indio_dev, insert_buffer);
  if (ret)
   goto err_free_config;
 }

 ret = iio_disable_buffers(indio_dev);
 if (ret)
  goto err_deactivate_all;

 if (remove_buffer)
  iio_buffer_deactivate(remove_buffer);
 if (insert_buffer)
  iio_buffer_activate(indio_dev, insert_buffer);


 if (list_empty(&indio_dev->buffer_list))
  return 0;

 ret = iio_enable_buffers(indio_dev, &new_config);
 if (ret)
  goto err_deactivate_all;

 return 0;

err_deactivate_all:
 iio_buffer_deactivate_all(indio_dev);

err_free_config:
 iio_free_scan_mask(indio_dev, new_config.scan_mask);
 return ret;
}
