
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_11__ {int brightness_set_blocking; int max_brightness; int name; } ;
struct cpcap_led {TYPE_2__* dev; TYPE_5__ led; TYPE_1__* info; int update_lock; int regmap; int vdd; } ;
struct TYPE_9__ {int reg; int limit; int init_val; scalar_t__ init_mask; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpcap_led_of_match ;
 int cpcap_led_set ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 int device_property_read_string (TYPE_2__*,char*,int *) ;
 struct cpcap_led* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_led_classdev_register (TYPE_2__*,TYPE_5__*) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 int platform_set_drvdata (struct platform_device*,struct cpcap_led*) ;
 int regmap_update_bits (int ,int,scalar_t__,int ) ;

__attribute__((used)) static int cpcap_led_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct cpcap_led *led;
 int err;

 match = of_match_device(of_match_ptr(cpcap_led_of_match), &pdev->dev);
 if (!match || !match->data)
  return -EINVAL;

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;
 platform_set_drvdata(pdev, led);
 led->info = match->data;
 led->dev = &pdev->dev;

 if (led->info->reg == 0x0000) {
  dev_err(led->dev, "Unsupported LED");
  return -ENODEV;
 }

 led->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!led->regmap)
  return -ENODEV;

 led->vdd = devm_regulator_get(&pdev->dev, "vdd");
 if (IS_ERR(led->vdd)) {
  err = PTR_ERR(led->vdd);
  dev_err(led->dev, "Couldn't get regulator: %d", err);
  return err;
 }

 err = device_property_read_string(&pdev->dev, "label", &led->led.name);
 if (err) {
  dev_err(led->dev, "Couldn't read LED label: %d", err);
  return err;
 }

 if (led->info->init_mask) {
  err = regmap_update_bits(led->regmap, led->info->reg,
   led->info->init_mask, led->info->init_val);
  if (err) {
   dev_err(led->dev, "regmap failed: %d", err);
   return err;
  }
 }

 mutex_init(&led->update_lock);

 led->led.max_brightness = led->info->limit;
 led->led.brightness_set_blocking = cpcap_led_set;
 err = devm_led_classdev_register(&pdev->dev, &led->led);
 if (err) {
  dev_err(led->dev, "Couldn't register LED: %d", err);
  return err;
 }

 return 0;
}
