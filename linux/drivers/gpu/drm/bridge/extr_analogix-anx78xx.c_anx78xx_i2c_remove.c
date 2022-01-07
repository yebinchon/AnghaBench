
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct anx78xx {int edid; int bridge; } ;


 int drm_bridge_remove (int *) ;
 struct anx78xx* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int unregister_i2c_dummy_clients (struct anx78xx*) ;

__attribute__((used)) static int anx78xx_i2c_remove(struct i2c_client *client)
{
 struct anx78xx *anx78xx = i2c_get_clientdata(client);

 drm_bridge_remove(&anx78xx->bridge);

 unregister_i2c_dummy_clients(anx78xx);

 kfree(anx78xx->edid);

 return 0;
}
