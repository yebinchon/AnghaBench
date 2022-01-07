
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct i2c_client {int adapter; } ;
struct file {struct i2c_client* private_data; } ;


 int i2c_put_adapter (int ) ;
 int kfree (struct i2c_client*) ;

__attribute__((used)) static int i2cdev_release(struct inode *inode, struct file *file)
{
 struct i2c_client *client = file->private_data;

 i2c_put_adapter(client->adapter);
 kfree(client);
 file->private_data = ((void*)0);

 return 0;
}
