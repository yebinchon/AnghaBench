
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int * platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ipsps_info ;
 int ipsps_pdata ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,int *) ;

__attribute__((used)) static int ipsps_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 client->dev.platform_data = &ipsps_pdata;
 return pmbus_do_probe(client, id, &ipsps_info);
}
