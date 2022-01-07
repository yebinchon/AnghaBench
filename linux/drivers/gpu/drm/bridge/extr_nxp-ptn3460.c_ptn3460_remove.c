
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn3460_bridge {int bridge; } ;
struct i2c_client {int dummy; } ;


 int drm_bridge_remove (int *) ;
 struct ptn3460_bridge* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int ptn3460_remove(struct i2c_client *client)
{
 struct ptn3460_bridge *ptn_bridge = i2c_get_clientdata(client);

 drm_bridge_remove(&ptn_bridge->bridge);

 return 0;
}
