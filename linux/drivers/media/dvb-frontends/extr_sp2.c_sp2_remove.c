
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp2 {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct sp2* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct sp2*) ;
 int sp2_exit (struct i2c_client*) ;

__attribute__((used)) static int sp2_remove(struct i2c_client *client)
{
 struct sp2 *s = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");
 sp2_exit(client);
 kfree(s);
 return 0;
}
