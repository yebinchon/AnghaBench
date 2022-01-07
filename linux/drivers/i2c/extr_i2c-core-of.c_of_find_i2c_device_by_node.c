
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_of_node (int *,struct device_node*) ;
 int i2c_bus_type ;
 struct i2c_client* i2c_verify_client (struct device*) ;
 int put_device (struct device*) ;

struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
{
 struct device *dev;
 struct i2c_client *client;

 dev = bus_find_device_by_of_node(&i2c_bus_type, node);
 if (!dev)
  return ((void*)0);

 client = i2c_verify_client(dev);
 if (!client)
  put_device(dev);

 return client;
}
