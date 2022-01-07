
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct eeprom_data {int bin; } ;


 struct eeprom_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_slave_unregister (struct i2c_client*) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static int i2c_slave_eeprom_remove(struct i2c_client *client)
{
 struct eeprom_data *eeprom = i2c_get_clientdata(client);

 i2c_slave_unregister(client);
 sysfs_remove_bin_file(&client->dev.kobj, &eeprom->bin);

 return 0;
}
