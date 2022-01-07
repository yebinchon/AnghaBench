
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int owner; } ;
struct i2c_dev {TYPE_1__ cdev; struct i2c_dev* dev; } ;
struct i2c_adapter {int nr; int name; int dev; } ;
struct device {int * type; } ;


 int I2C_MAJOR ;
 scalar_t__ IS_ERR (struct i2c_dev*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct i2c_dev*) ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 struct i2c_dev* device_create (int ,int *,int ,int *,char*,int ) ;
 struct i2c_dev* get_free_i2c_dev (struct i2c_adapter*) ;
 int i2c_adapter_type ;
 int i2c_dev_class ;
 int i2cdev_fops ;
 int pr_debug (char*,int ,int ) ;
 int put_i2c_dev (struct i2c_dev*) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static int i2cdev_attach_adapter(struct device *dev, void *dummy)
{
 struct i2c_adapter *adap;
 struct i2c_dev *i2c_dev;
 int res;

 if (dev->type != &i2c_adapter_type)
  return 0;
 adap = to_i2c_adapter(dev);

 i2c_dev = get_free_i2c_dev(adap);
 if (IS_ERR(i2c_dev))
  return PTR_ERR(i2c_dev);

 cdev_init(&i2c_dev->cdev, &i2cdev_fops);
 i2c_dev->cdev.owner = THIS_MODULE;
 res = cdev_add(&i2c_dev->cdev, MKDEV(I2C_MAJOR, adap->nr), 1);
 if (res)
  goto error_cdev;


 i2c_dev->dev = device_create(i2c_dev_class, &adap->dev,
         MKDEV(I2C_MAJOR, adap->nr), ((void*)0),
         "i2c-%d", adap->nr);
 if (IS_ERR(i2c_dev->dev)) {
  res = PTR_ERR(i2c_dev->dev);
  goto error;
 }

 pr_debug("i2c-dev: adapter [%s] registered as minor %d\n",
   adap->name, adap->nr);
 return 0;
error:
 cdev_del(&i2c_dev->cdev);
error_cdev:
 put_i2c_dev(i2c_dev);
 return res;
}
