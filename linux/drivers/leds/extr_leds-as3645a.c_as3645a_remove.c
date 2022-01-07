
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct as3645a {int indicator_node; int flash_node; int mutex; int iled_cdev; int fled; int vfind; int vf; } ;


 int AS_MODE_EXT_TORCH ;
 int as3645a_set_control (struct as3645a*,int ,int) ;
 int fwnode_handle_put (int ) ;
 struct as3645a* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_flash_unregister (int *) ;
 int led_classdev_unregister (int *) ;
 int mutex_destroy (int *) ;
 int v4l2_flash_release (int ) ;

__attribute__((used)) static int as3645a_remove(struct i2c_client *client)
{
 struct as3645a *flash = i2c_get_clientdata(client);

 as3645a_set_control(flash, AS_MODE_EXT_TORCH, 0);

 v4l2_flash_release(flash->vf);
 v4l2_flash_release(flash->vfind);

 led_classdev_flash_unregister(&flash->fled);
 led_classdev_unregister(&flash->iled_cdev);

 mutex_destroy(&flash->mutex);

 fwnode_handle_put(flash->flash_node);
 fwnode_handle_put(flash->indicator_node);

 return 0;
}
