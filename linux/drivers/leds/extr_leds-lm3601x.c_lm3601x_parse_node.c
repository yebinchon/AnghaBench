
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3601x_led {TYPE_1__* client; int max_flash_timeout; int flash_current_max; int torch_current_max; int led_mode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int LM3601X_LED_IR ;
 int LM3601X_LED_TORCH ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct fwnode_handle* device_get_next_child_node (int *,struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,int *) ;

__attribute__((used)) static int lm3601x_parse_node(struct lm3601x_led *led,
         struct fwnode_handle **fwnode)
{
 struct fwnode_handle *child = ((void*)0);
 int ret = -ENODEV;

 child = device_get_next_child_node(&led->client->dev, child);
 if (!child) {
  dev_err(&led->client->dev, "No LED Child node\n");
  return ret;
 }

 ret = fwnode_property_read_u32(child, "reg", &led->led_mode);
 if (ret) {
  dev_err(&led->client->dev, "reg DT property missing\n");
  goto out_err;
 }

 if (led->led_mode > LM3601X_LED_TORCH ||
     led->led_mode < LM3601X_LED_IR) {
  dev_warn(&led->client->dev, "Invalid led mode requested\n");
  ret = -EINVAL;
  goto out_err;
 }

 ret = fwnode_property_read_u32(child, "led-max-microamp",
     &led->torch_current_max);
 if (ret) {
  dev_warn(&led->client->dev,
   "led-max-microamp DT property missing\n");
  goto out_err;
 }

 ret = fwnode_property_read_u32(child, "flash-max-microamp",
    &led->flash_current_max);
 if (ret) {
  dev_warn(&led->client->dev,
    "flash-max-microamp DT property missing\n");
  goto out_err;
 }

 ret = fwnode_property_read_u32(child, "flash-max-timeout-us",
    &led->max_flash_timeout);
 if (ret) {
  dev_warn(&led->client->dev,
    "flash-max-timeout-us DT property missing\n");
  goto out_err;
 }

 *fwnode = child;

out_err:
 fwnode_handle_put(child);
 return ret;
}
