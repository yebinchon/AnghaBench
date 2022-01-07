
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_data {struct dentry* debugfs; } ;
struct i2c_client {int dummy; } ;
struct dentry {int dummy; } ;


 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;

struct dentry *pmbus_get_debugfs_dir(struct i2c_client *client)
{
 struct pmbus_data *data = i2c_get_clientdata(client);

 return data->debugfs;
}
