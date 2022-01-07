
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bu21013_ts {int touch_stopped; } ;


 struct bu21013_ts* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int bu21013_remove(struct i2c_client *client)
{
 struct bu21013_ts *ts = i2c_get_clientdata(client);


 ts->touch_stopped = 1;


 return 0;
}
