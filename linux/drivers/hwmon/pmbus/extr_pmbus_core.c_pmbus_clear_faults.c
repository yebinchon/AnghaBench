
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_data {TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int pages; } ;


 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 int pmbus_clear_fault_page (struct i2c_client*,int) ;

void pmbus_clear_faults(struct i2c_client *client)
{
 struct pmbus_data *data = i2c_get_clientdata(client);
 int i;

 for (i = 0; i < data->info->pages; i++)
  pmbus_clear_fault_page(client, i);
}
