
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_smbus_alert {int alert; } ;
struct i2c_client {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct i2c_smbus_alert* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int smbalert_remove(struct i2c_client *ara)
{
 struct i2c_smbus_alert *alert = i2c_get_clientdata(ara);

 cancel_work_sync(&alert->alert);
 return 0;
}
