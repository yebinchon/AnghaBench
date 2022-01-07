
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blink_set; int brightness_set; int max_brightness; int name; } ;
struct ibm_cffps {TYPE_1__ led; int led_name; struct i2c_client* client; } ;
struct device {int dummy; } ;
struct i2c_client {char* name; int addr; struct device dev; } ;


 int LED_FULL ;
 int dev_warn (struct device*,char*,int) ;
 int devm_led_classdev_register (struct device*,TYPE_1__*) ;
 int ibm_cffps_led_blink_set ;
 int ibm_cffps_led_brightness_set ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static void ibm_cffps_create_led_class(struct ibm_cffps *psu)
{
 int rc;
 struct i2c_client *client = psu->client;
 struct device *dev = &client->dev;

 snprintf(psu->led_name, sizeof(psu->led_name), "%s-%02x", client->name,
   client->addr);
 psu->led.name = psu->led_name;
 psu->led.max_brightness = LED_FULL;
 psu->led.brightness_set = ibm_cffps_led_brightness_set;
 psu->led.blink_set = ibm_cffps_led_blink_set;

 rc = devm_led_classdev_register(dev, &psu->led);
 if (rc)
  dev_warn(dev, "failed to register led class: %d\n", rc);
}
