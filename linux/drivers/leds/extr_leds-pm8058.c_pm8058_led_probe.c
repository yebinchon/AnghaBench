
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct TYPE_8__ {int (* brightness_get ) (TYPE_1__*) ;int max_brightness; int brightness; int name; int flags; int (* brightness_set ) (TYPE_1__*,int) ;void* default_trigger; } ;
struct pm8058_led {scalar_t__ ledtype; TYPE_1__ cdev; int reg; struct regmap* map; } ;
struct TYPE_9__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int name; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_OFF ;
 scalar_t__ PM8058_LED_TYPE_COMMON ;
 scalar_t__ PM8058_LED_TYPE_FLASH ;
 scalar_t__ PM8058_LED_TYPE_KEYPAD ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 struct pm8058_led* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_led_classdev_register (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ of_device_get_match_data (TYPE_3__*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int pm8058_led_get (TYPE_1__*) ;
 int pm8058_led_set (TYPE_1__*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int pm8058_led_probe(struct platform_device *pdev)
{
 struct pm8058_led *led;
 struct device_node *np = pdev->dev.of_node;
 int ret;
 struct regmap *map;
 const char *state;
 enum led_brightness maxbright;

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->ledtype = (u32)(unsigned long)of_device_get_match_data(&pdev->dev);

 map = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!map) {
  dev_err(&pdev->dev, "Parent regmap unavailable.\n");
  return -ENXIO;
 }
 led->map = map;

 ret = of_property_read_u32(np, "reg", &led->reg);
 if (ret) {
  dev_err(&pdev->dev, "no register offset specified\n");
  return -EINVAL;
 }


 led->cdev.name = of_get_property(np, "label", ((void*)0)) ? : np->name;
 led->cdev.default_trigger =
  of_get_property(np, "linux,default-trigger", ((void*)0));
 led->cdev.brightness_set = pm8058_led_set;
 led->cdev.brightness_get = pm8058_led_get;
 if (led->ledtype == PM8058_LED_TYPE_COMMON)
  maxbright = 31;
 else
  maxbright = 15;
 led->cdev.max_brightness = maxbright;

 state = of_get_property(np, "default-state", ((void*)0));
 if (state) {
  if (!strcmp(state, "keep")) {
   led->cdev.brightness = pm8058_led_get(&led->cdev);
  } else if (!strcmp(state, "on")) {
   led->cdev.brightness = maxbright;
   pm8058_led_set(&led->cdev, maxbright);
  } else {
   led->cdev.brightness = LED_OFF;
   pm8058_led_set(&led->cdev, LED_OFF);
  }
 }

 if (led->ledtype == PM8058_LED_TYPE_KEYPAD ||
     led->ledtype == PM8058_LED_TYPE_FLASH)
  led->cdev.flags = LED_CORE_SUSPENDRESUME;

 ret = devm_led_classdev_register(&pdev->dev, &led->cdev);
 if (ret) {
  dev_err(&pdev->dev, "unable to register led \"%s\"\n",
   led->cdev.name);
  return ret;
 }

 return 0;
}
