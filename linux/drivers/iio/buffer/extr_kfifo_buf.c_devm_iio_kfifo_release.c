
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct device {int dummy; } ;


 int iio_kfifo_free (struct iio_buffer*) ;

__attribute__((used)) static void devm_iio_kfifo_release(struct device *dev, void *res)
{
 iio_kfifo_free(*(struct iio_buffer **)res);
}
