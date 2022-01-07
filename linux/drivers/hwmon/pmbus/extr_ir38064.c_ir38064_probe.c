
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ir38064_info ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,int *) ;

__attribute__((used)) static int ir38064_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 return pmbus_do_probe(client, id, &ir38064_info);
}
