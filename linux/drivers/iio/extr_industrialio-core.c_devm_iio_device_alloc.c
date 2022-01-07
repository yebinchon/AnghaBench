
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_iio_device_release ;
 int devres_add (struct device*,struct iio_dev**) ;
 struct iio_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct iio_dev**) ;
 struct iio_dev* iio_device_alloc (int) ;

struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv)
{
 struct iio_dev **ptr, *iio_dev;

 ptr = devres_alloc(devm_iio_device_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 iio_dev = iio_device_alloc(sizeof_priv);
 if (iio_dev) {
  *ptr = iio_dev;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return iio_dev;
}
