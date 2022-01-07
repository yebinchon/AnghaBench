
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_iio_kfifo_release ;
 int devres_add (struct device*,struct iio_buffer**) ;
 struct iio_buffer** devres_alloc (int ,int,int ) ;
 int devres_free (struct iio_buffer**) ;
 struct iio_buffer* iio_kfifo_allocate () ;

struct iio_buffer *devm_iio_kfifo_allocate(struct device *dev)
{
 struct iio_buffer **ptr, *r;

 ptr = devres_alloc(devm_iio_kfifo_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 r = iio_kfifo_allocate();
 if (r) {
  *ptr = r;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return r;
}
