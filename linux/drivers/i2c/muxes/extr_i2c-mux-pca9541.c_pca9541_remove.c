
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct i2c_mux_core* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (struct i2c_mux_core*) ;

__attribute__((used)) static int pca9541_remove(struct i2c_client *client)
{
 struct i2c_mux_core *muxc = i2c_get_clientdata(client);

 i2c_mux_del_adapters(muxc);
 return 0;
}
