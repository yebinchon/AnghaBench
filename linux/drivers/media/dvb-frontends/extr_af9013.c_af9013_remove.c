
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct af9013_state {int regmap; int muxc; } ;


 int dev_dbg (int *,char*) ;
 struct af9013_state* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct af9013_state*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int af9013_remove(struct i2c_client *client)
{
 struct af9013_state *state = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 i2c_mux_del_adapters(state->muxc);

 regmap_exit(state->regmap);

 kfree(state);

 return 0;
}
