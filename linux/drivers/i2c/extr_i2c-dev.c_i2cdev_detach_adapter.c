
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_dev {int cdev; } ;
struct i2c_adapter {int name; int nr; } ;
struct device {int * type; } ;


 int I2C_MAJOR ;
 int MKDEV (int ,int ) ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int i2c_adapter_type ;
 int i2c_dev_class ;
 struct i2c_dev* i2c_dev_get_by_minor (int ) ;
 int pr_debug (char*,int ) ;
 int put_i2c_dev (struct i2c_dev*) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static int i2cdev_detach_adapter(struct device *dev, void *dummy)
{
 struct i2c_adapter *adap;
 struct i2c_dev *i2c_dev;

 if (dev->type != &i2c_adapter_type)
  return 0;
 adap = to_i2c_adapter(dev);

 i2c_dev = i2c_dev_get_by_minor(adap->nr);
 if (!i2c_dev)
  return 0;

 cdev_del(&i2c_dev->cdev);
 put_i2c_dev(i2c_dev);
 device_destroy(i2c_dev_class, MKDEV(I2C_MAJOR, adap->nr));

 pr_debug("i2c-dev: adapter [%s] unregistered\n", adap->name);
 return 0;
}
