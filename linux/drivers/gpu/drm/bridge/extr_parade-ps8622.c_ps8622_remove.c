
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int bridge; int bl; } ;
struct i2c_client {int dummy; } ;


 int backlight_device_unregister (int ) ;
 int drm_bridge_remove (int *) ;
 struct ps8622_bridge* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int ps8622_remove(struct i2c_client *client)
{
 struct ps8622_bridge *ps8622 = i2c_get_clientdata(client);

 backlight_device_unregister(ps8622->bl);
 drm_bridge_remove(&ps8622->bridge);

 return 0;
}
