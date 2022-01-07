
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int aux; int bridge; } ;
struct i2c_client {int dummy; } ;


 int drm_bridge_remove (int *) ;
 int drm_dp_aux_unregister (int *) ;
 struct tc_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int tc_remove(struct i2c_client *client)
{
 struct tc_data *tc = i2c_get_clientdata(client);

 drm_bridge_remove(&tc->bridge);
 drm_dp_aux_unregister(&tc->aux);

 return 0;
}
