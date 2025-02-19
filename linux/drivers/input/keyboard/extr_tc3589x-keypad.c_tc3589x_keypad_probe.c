
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tc_keypad {int keymap; struct tc3589x* tc3589x; struct input_dev* input; struct tc3589x_keypad_platform_data const* board; } ;
struct tc3589x_keypad_platform_data {int irqtype; int enable_wakeup; int no_autorepeat; int keymap_data; } ;
struct tc3589x {int dummy; } ;
struct TYPE_12__ {int parent; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct TYPE_11__ {TYPE_3__* parent; } ;
struct TYPE_10__ {int bustype; } ;
struct input_dev {int evbit; int keycode; int close; int open; TYPE_2__ dev; int name; TYPE_1__ id; } ;


 int BUS_I2C ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct tc3589x_keypad_platform_data const*) ;
 int MSC_SCAN ;
 int PTR_ERR (struct tc3589x_keypad_platform_data const*) ;
 int TC3589x_MAX_KPCOL ;
 int TC3589x_MAX_KPROW ;
 int __set_bit (int ,int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct tc3589x* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_3__*,int ) ;
 int device_set_wakeup_capable (TYPE_3__*,int ) ;
 struct input_dev* devm_input_allocate_device (TYPE_3__*) ;
 struct tc_keypad* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,char*,struct tc_keypad*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct tc_keypad*) ;
 int matrix_keypad_build_keymap (int ,int *,int ,int ,int *,struct input_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tc_keypad*) ;
 int tc3589x_keypad_close ;
 int tc3589x_keypad_disable (struct tc_keypad*) ;
 int tc3589x_keypad_irq ;
 struct tc3589x_keypad_platform_data* tc3589x_keypad_of_probe (TYPE_3__*) ;
 int tc3589x_keypad_open ;

__attribute__((used)) static int tc3589x_keypad_probe(struct platform_device *pdev)
{
 struct tc3589x *tc3589x = dev_get_drvdata(pdev->dev.parent);
 struct tc_keypad *keypad;
 struct input_dev *input;
 const struct tc3589x_keypad_platform_data *plat;
 int error, irq;

 plat = tc3589x_keypad_of_probe(&pdev->dev);
 if (IS_ERR(plat)) {
  dev_err(&pdev->dev, "invalid keypad platform data\n");
  return PTR_ERR(plat);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 keypad = devm_kzalloc(&pdev->dev, sizeof(struct tc_keypad),
         GFP_KERNEL);
 if (!keypad)
  return -ENOMEM;

 input = devm_input_allocate_device(&pdev->dev);
 if (!input) {
  dev_err(&pdev->dev, "failed to allocate input device\n");
  return -ENOMEM;
 }

 keypad->board = plat;
 keypad->input = input;
 keypad->tc3589x = tc3589x;

 input->id.bustype = BUS_I2C;
 input->name = pdev->name;
 input->dev.parent = &pdev->dev;

 input->open = tc3589x_keypad_open;
 input->close = tc3589x_keypad_close;

 error = matrix_keypad_build_keymap(plat->keymap_data, ((void*)0),
        TC3589x_MAX_KPROW, TC3589x_MAX_KPCOL,
        ((void*)0), input);
 if (error) {
  dev_err(&pdev->dev, "Failed to build keymap\n");
  return error;
 }

 keypad->keymap = input->keycode;

 input_set_capability(input, EV_MSC, MSC_SCAN);
 if (!plat->no_autorepeat)
  __set_bit(EV_REP, input->evbit);

 input_set_drvdata(input, keypad);

 tc3589x_keypad_disable(keypad);

 error = devm_request_threaded_irq(&pdev->dev, irq,
       ((void*)0), tc3589x_keypad_irq,
       plat->irqtype | IRQF_ONESHOT,
       "tc3589x-keypad", keypad);
 if (error) {
  dev_err(&pdev->dev,
    "Could not allocate irq %d,error %d\n",
    irq, error);
  return error;
 }

 error = input_register_device(input);
 if (error) {
  dev_err(&pdev->dev, "Could not register input device\n");
  return error;
 }


 device_init_wakeup(&pdev->dev, plat->enable_wakeup);
 device_set_wakeup_capable(&pdev->dev, plat->enable_wakeup);

 platform_set_drvdata(pdev, keypad);

 return 0;
}
