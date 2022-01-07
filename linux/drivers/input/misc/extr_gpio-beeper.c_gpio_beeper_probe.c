
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int name; int dev; } ;
struct TYPE_2__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {int event; int close; TYPE_1__ id; int name; } ;
struct gpio_beeper {int work; int desc; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_SND ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SND_BELL ;
 int devm_gpiod_get (int *,int *,int ) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct gpio_beeper* devm_kzalloc (int *,int,int ) ;
 int gpio_beeper_close ;
 int gpio_beeper_event ;
 int gpio_beeper_work ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct gpio_beeper*) ;

__attribute__((used)) static int gpio_beeper_probe(struct platform_device *pdev)
{
 struct gpio_beeper *beep;
 struct input_dev *input;

 beep = devm_kzalloc(&pdev->dev, sizeof(*beep), GFP_KERNEL);
 if (!beep)
  return -ENOMEM;

 beep->desc = devm_gpiod_get(&pdev->dev, ((void*)0), GPIOD_OUT_LOW);
 if (IS_ERR(beep->desc))
  return PTR_ERR(beep->desc);

 input = devm_input_allocate_device(&pdev->dev);
 if (!input)
  return -ENOMEM;

 INIT_WORK(&beep->work, gpio_beeper_work);

 input->name = pdev->name;
 input->id.bustype = BUS_HOST;
 input->id.vendor = 0x0001;
 input->id.product = 0x0001;
 input->id.version = 0x0100;
 input->close = gpio_beeper_close;
 input->event = gpio_beeper_event;

 input_set_capability(input, EV_SND, SND_BELL);

 input_set_drvdata(input, beep);

 return input_register_device(input);
}
