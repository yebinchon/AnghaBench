
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st1232_ts_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct st1232_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int st1232_ts_power (struct st1232_ts_data*,int) ;

__attribute__((used)) static int st1232_ts_remove(struct i2c_client *client)
{
 struct st1232_ts_data *ts = i2c_get_clientdata(client);

 st1232_ts_power(ts, 0);

 return 0;
}
