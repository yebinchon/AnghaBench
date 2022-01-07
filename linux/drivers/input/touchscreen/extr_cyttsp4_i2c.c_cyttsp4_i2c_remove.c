
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cyttsp4 {int dummy; } ;


 int cyttsp4_remove (struct cyttsp4*) ;
 struct cyttsp4* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cyttsp4_i2c_remove(struct i2c_client *client)
{
 struct cyttsp4 *ts = i2c_get_clientdata(client);

 cyttsp4_remove(ts);

 return 0;
}
