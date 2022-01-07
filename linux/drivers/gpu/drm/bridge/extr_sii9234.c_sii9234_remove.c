
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int bridge; } ;
struct i2c_client {int dummy; } ;


 int drm_bridge_remove (int *) ;
 struct sii9234* i2c_get_clientdata (struct i2c_client*) ;
 int sii9234_cable_out (struct sii9234*) ;
 int sii9234_deinit_resources (struct sii9234*) ;

__attribute__((used)) static int sii9234_remove(struct i2c_client *client)
{
 struct sii9234 *ctx = i2c_get_clientdata(client);

 sii9234_cable_out(ctx);
 drm_bridge_remove(&ctx->bridge);
 sii9234_deinit_resources(ctx);

 return 0;
}
