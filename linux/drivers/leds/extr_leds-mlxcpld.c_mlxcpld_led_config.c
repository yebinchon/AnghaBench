
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mlxcpld_led_priv {int dummy; } ;
struct mlxcpld_led_pdata {int num_led_instances; TYPE_7__* pled; TYPE_1__* profile; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int max_brightness; int flags; int blink_set; int (* brightness_set ) (TYPE_4__*,scalar_t__) ;int brightness; int name; } ;
struct TYPE_9__ {int base_color; int mask; int offset; } ;
struct TYPE_13__ {TYPE_4__ cdev; TYPE_2__ param; } ;
struct TYPE_12__ {TYPE_3__* profile; } ;
struct TYPE_10__ {scalar_t__ brightness; int base_color; int mask; int offset; } ;
struct TYPE_8__ {int brightness; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 TYPE_7__* devm_kcalloc (struct device*,int,int,int ) ;
 int devm_led_classdev_register (struct device*,TYPE_4__*) ;
 TYPE_5__* mlxcpld_led ;
 int mlxcpld_led_blink_set ;
 int mlxcpld_led_brightness_set (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static int mlxcpld_led_config(struct device *dev,
         struct mlxcpld_led_pdata *cpld)
{
 int i;
 int err;

 cpld->pled = devm_kcalloc(dev,
      cpld->num_led_instances,
      sizeof(struct mlxcpld_led_priv),
      GFP_KERNEL);
 if (!cpld->pled)
  return -ENOMEM;

 for (i = 0; i < cpld->num_led_instances; i++) {
  cpld->pled[i].cdev.name = cpld->profile[i].name;
  cpld->pled[i].cdev.brightness = cpld->profile[i].brightness;
  cpld->pled[i].cdev.max_brightness = 1;
  cpld->pled[i].cdev.brightness_set = mlxcpld_led_brightness_set;
  cpld->pled[i].cdev.blink_set = mlxcpld_led_blink_set;
  cpld->pled[i].cdev.flags = LED_CORE_SUSPENDRESUME;
  err = devm_led_classdev_register(dev, &cpld->pled[i].cdev);
  if (err)
   return err;

  cpld->pled[i].param.offset = mlxcpld_led->profile[i].offset;
  cpld->pled[i].param.mask = mlxcpld_led->profile[i].mask;
  cpld->pled[i].param.base_color =
     mlxcpld_led->profile[i].base_color;

  if (mlxcpld_led->profile[i].brightness)
   mlxcpld_led_brightness_set(&cpld->pled[i].cdev,
     mlxcpld_led->profile[i].brightness);
 }

 return 0;
}
