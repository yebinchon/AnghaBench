
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int brightness_get; int brightness_set_blocking; int brightness; int max_brightness; int name; } ;
struct stmfts_data {int ledvdd; TYPE_2__ led_cdev; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int LED_OFF ;
 int LED_ON ;
 int PTR_ERR (int ) ;
 int STMFTS_DEV_NAME ;
 int devm_led_classdev_register (int *,TYPE_2__*) ;
 int devm_regulator_get (int *,char*) ;
 int devm_regulator_put (int ) ;
 int stmfts_brightness_get ;
 int stmfts_brightness_set ;

__attribute__((used)) static int stmfts_enable_led(struct stmfts_data *sdata)
{
 int err;


 sdata->ledvdd = devm_regulator_get(&sdata->client->dev, "ledvdd");
 if (IS_ERR(sdata->ledvdd))
  return PTR_ERR(sdata->ledvdd);

 sdata->led_cdev.name = STMFTS_DEV_NAME;
 sdata->led_cdev.max_brightness = LED_ON;
 sdata->led_cdev.brightness = LED_OFF;
 sdata->led_cdev.brightness_set_blocking = stmfts_brightness_set;
 sdata->led_cdev.brightness_get = stmfts_brightness_get;

 err = devm_led_classdev_register(&sdata->client->dev, &sdata->led_cdev);
 if (err) {
  devm_regulator_put(sdata->ledvdd);
  return err;
 }

 return 0;
}
