
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct gpio_vibrator {TYPE_2__* input; int play_work; int gpio; int vcc; } ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_8__ {char* name; int close; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int INIT_WORK (int *,int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_gpiod_get (int *,char*,int ) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 struct gpio_vibrator* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_get (int *,char*) ;
 int gpio_vibrator_close ;
 int gpio_vibrator_play_effect ;
 int gpio_vibrator_play_work ;
 int input_ff_create_memless (TYPE_2__*,int *,int ) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int input_set_drvdata (TYPE_2__*,struct gpio_vibrator*) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_vibrator*) ;

__attribute__((used)) static int gpio_vibrator_probe(struct platform_device *pdev)
{
 struct gpio_vibrator *vibrator;
 int err;

 vibrator = devm_kzalloc(&pdev->dev, sizeof(*vibrator), GFP_KERNEL);
 if (!vibrator)
  return -ENOMEM;

 vibrator->input = devm_input_allocate_device(&pdev->dev);
 if (!vibrator->input)
  return -ENOMEM;

 vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
 err = PTR_ERR_OR_ZERO(vibrator->vcc);
 if (err) {
  if (err != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to request regulator: %d\n",
    err);
  return err;
 }

 vibrator->gpio = devm_gpiod_get(&pdev->dev, "enable", GPIOD_OUT_LOW);
 err = PTR_ERR_OR_ZERO(vibrator->gpio);
 if (err) {
  if (err != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to request main gpio: %d\n",
    err);
  return err;
 }

 INIT_WORK(&vibrator->play_work, gpio_vibrator_play_work);

 vibrator->input->name = "gpio-vibrator";
 vibrator->input->id.bustype = BUS_HOST;
 vibrator->input->close = gpio_vibrator_close;

 input_set_drvdata(vibrator->input, vibrator);
 input_set_capability(vibrator->input, EV_FF, FF_RUMBLE);

 err = input_ff_create_memless(vibrator->input, ((void*)0),
          gpio_vibrator_play_effect);
 if (err) {
  dev_err(&pdev->dev, "Couldn't create FF dev: %d\n", err);
  return err;
 }

 err = input_register_device(vibrator->input);
 if (err) {
  dev_err(&pdev->dev, "Couldn't register input dev: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, vibrator);

 return 0;
}
