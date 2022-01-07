
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt330x_state {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct lgdt330x_state* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct lgdt330x_state*) ;

__attribute__((used)) static int lgdt330x_remove(struct i2c_client *client)
{
 struct lgdt330x_state *state = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 kfree(state);

 return 0;
}
