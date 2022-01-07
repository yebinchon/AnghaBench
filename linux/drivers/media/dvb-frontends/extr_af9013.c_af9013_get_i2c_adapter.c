
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct i2c_adapter {int dummy; } ;
struct af9013_state {TYPE_1__* muxc; } ;
struct TYPE_2__ {struct i2c_adapter** adapter; } ;


 int dev_dbg (int *,char*) ;
 struct af9013_state* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct i2c_adapter *af9013_get_i2c_adapter(struct i2c_client *client)
{
 struct af9013_state *state = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return state->muxc->adapter[0];
}
