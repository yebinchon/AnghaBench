
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_hw_consumer {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct iio_hw_consumer*) ;
 int devm_iio_hw_consumer_release ;
 int devres_add (struct device*,struct iio_hw_consumer**) ;
 struct iio_hw_consumer** devres_alloc (int ,int,int ) ;
 int devres_free (struct iio_hw_consumer**) ;
 struct iio_hw_consumer* iio_hw_consumer_alloc (struct device*) ;

struct iio_hw_consumer *devm_iio_hw_consumer_alloc(struct device *dev)
{
 struct iio_hw_consumer **ptr, *iio_hwc;

 ptr = devres_alloc(devm_iio_hw_consumer_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 iio_hwc = iio_hw_consumer_alloc(dev);
 if (IS_ERR(iio_hwc)) {
  devres_free(ptr);
 } else {
  *ptr = iio_hwc;
  devres_add(dev, ptr);
 }

 return iio_hwc;
}
