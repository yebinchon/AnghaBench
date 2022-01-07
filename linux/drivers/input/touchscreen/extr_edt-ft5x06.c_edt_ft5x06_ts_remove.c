
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct edt_ft5x06_ts_data {int dummy; } ;


 int edt_ft5x06_ts_teardown_debugfs (struct edt_ft5x06_ts_data*) ;
 struct edt_ft5x06_ts_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int edt_ft5x06_ts_remove(struct i2c_client *client)
{
 struct edt_ft5x06_ts_data *tsdata = i2c_get_clientdata(client);

 edt_ft5x06_ts_teardown_debugfs(tsdata);

 return 0;
}
