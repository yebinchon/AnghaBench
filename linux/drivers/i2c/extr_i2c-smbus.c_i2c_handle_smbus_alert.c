
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_smbus_alert {int alert; } ;
struct i2c_client {int dummy; } ;


 struct i2c_smbus_alert* i2c_get_clientdata (struct i2c_client*) ;
 int schedule_work (int *) ;

int i2c_handle_smbus_alert(struct i2c_client *ara)
{
 struct i2c_smbus_alert *alert = i2c_get_clientdata(ara);

 return schedule_work(&alert->alert);
}
