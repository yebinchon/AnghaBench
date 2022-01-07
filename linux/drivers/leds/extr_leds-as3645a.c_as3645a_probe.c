
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct as3645a {int indicator_node; int flash_node; int mutex; int fled; struct i2c_client* client; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int as3645a_detect (struct as3645a*) ;
 int as3645a_led_class_setup (struct as3645a*) ;
 int as3645a_parse_node (struct as3645a*,int ) ;
 int as3645a_setup (struct as3645a*) ;
 int as3645a_v4l2_setup (struct as3645a*) ;
 int dev_fwnode (int *) ;
 struct as3645a* devm_kzalloc (int *,int,int ) ;
 int fwnode_handle_put (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct as3645a*) ;
 int led_classdev_flash_unregister (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int as3645a_probe(struct i2c_client *client)
{
 struct as3645a *flash;
 int rval;

 if (!dev_fwnode(&client->dev))
  return -ENODEV;

 flash = devm_kzalloc(&client->dev, sizeof(*flash), GFP_KERNEL);
 if (flash == ((void*)0))
  return -ENOMEM;

 flash->client = client;

 rval = as3645a_parse_node(flash, dev_fwnode(&client->dev));
 if (rval < 0)
  return rval;

 rval = as3645a_detect(flash);
 if (rval < 0)
  goto out_put_nodes;

 mutex_init(&flash->mutex);
 i2c_set_clientdata(client, flash);

 rval = as3645a_setup(flash);
 if (rval)
  goto out_mutex_destroy;

 rval = as3645a_led_class_setup(flash);
 if (rval)
  goto out_mutex_destroy;

 rval = as3645a_v4l2_setup(flash);
 if (rval)
  goto out_led_classdev_flash_unregister;

 return 0;

out_led_classdev_flash_unregister:
 led_classdev_flash_unregister(&flash->fled);

out_mutex_destroy:
 mutex_destroy(&flash->mutex);

out_put_nodes:
 fwnode_handle_put(flash->flash_node);
 fwnode_handle_put(flash->indicator_node);

 return rval;
}
