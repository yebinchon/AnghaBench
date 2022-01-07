
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __iio_device_register (struct iio_dev*,struct module*) ;
 int devm_iio_device_unreg ;
 int devres_add (struct device*,struct iio_dev**) ;
 struct iio_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct iio_dev**) ;

int __devm_iio_device_register(struct device *dev, struct iio_dev *indio_dev,
          struct module *this_mod)
{
 struct iio_dev **ptr;
 int ret;

 ptr = devres_alloc(devm_iio_device_unreg, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 *ptr = indio_dev;
 ret = __iio_device_register(indio_dev, this_mod);
 if (!ret)
  devres_add(dev, ptr);
 else
  devres_free(ptr);

 return ret;
}
