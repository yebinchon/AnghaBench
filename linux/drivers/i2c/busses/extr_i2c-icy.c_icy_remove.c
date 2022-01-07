
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dev; } ;
struct icy_i2c {int adapter; int ltc2990_fwnode; int ltc2990_client; } ;


 struct icy_i2c* dev_get_drvdata (int *) ;
 int fwnode_remove_software_node (int ) ;
 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static void icy_remove(struct zorro_dev *z)
{
 struct icy_i2c *i2c = dev_get_drvdata(&z->dev);

 i2c_unregister_device(i2c->ltc2990_client);
 fwnode_remove_software_node(i2c->ltc2990_fwnode);

 i2c_del_adapter(&i2c->adapter);
}
