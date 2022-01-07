
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; int modes; int pollfunc; int id; int * setup_ops; } ;
struct iio_buffer {int dummy; } ;


 int ENOMEM ;
 int INDIO_BUFFER_TRIGGERED ;
 int IRQF_ONESHOT ;
 int iio_alloc_pollfunc (int *,int *,int ,struct iio_dev*,char*,int ) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 struct iio_buffer* iio_kfifo_allocate () ;
 int iio_kfifo_free (int ) ;
 int iio_simple_dummy_buffer_setup_ops ;
 int iio_simple_dummy_trigger_h ;

int iio_simple_dummy_configure_buffer(struct iio_dev *indio_dev)
{
 int ret;
 struct iio_buffer *buffer;


 buffer = iio_kfifo_allocate();
 if (!buffer) {
  ret = -ENOMEM;
  goto error_ret;
 }

 iio_device_attach_buffer(indio_dev, buffer);





 indio_dev->setup_ops = &iio_simple_dummy_buffer_setup_ops;
 indio_dev->pollfunc = iio_alloc_pollfunc(((void*)0),
       &iio_simple_dummy_trigger_h,
       IRQF_ONESHOT,
       indio_dev,
       "iio_simple_dummy_consumer%d",
       indio_dev->id);

 if (!indio_dev->pollfunc) {
  ret = -ENOMEM;
  goto error_free_buffer;
 }





 indio_dev->modes |= INDIO_BUFFER_TRIGGERED;

 return 0;

error_free_buffer:
 iio_kfifo_free(indio_dev->buffer);
error_ret:
 return ret;
}
