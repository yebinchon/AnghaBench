
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct i2c_client {struct i2c_adapter* adapter; int name; } ;
struct i2c_adapter {int nr; } ;
struct file {struct i2c_client* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;
 struct i2c_adapter* i2c_get_adapter (unsigned int) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 unsigned int iminor (struct inode*) ;
 struct i2c_client* kzalloc (int,int ) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int i2cdev_open(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct i2c_client *client;
 struct i2c_adapter *adap;

 adap = i2c_get_adapter(minor);
 if (!adap)
  return -ENODEV;
 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client) {
  i2c_put_adapter(adap);
  return -ENOMEM;
 }
 snprintf(client->name, I2C_NAME_SIZE, "i2c-dev %d", adap->nr);

 client->adapter = adap;
 file->private_data = client;

 return 0;
}
