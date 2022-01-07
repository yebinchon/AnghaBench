
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii902x {int bridge; int i2cmux; } ;
struct i2c_client {int dummy; } ;


 int drm_bridge_remove (int *) ;
 struct sii902x* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;

__attribute__((used)) static int sii902x_remove(struct i2c_client *client)

{
 struct sii902x *sii902x = i2c_get_clientdata(client);

 i2c_mux_del_adapters(sii902x->i2cmux);
 drm_bridge_remove(&sii902x->bridge);

 return 0;
}
