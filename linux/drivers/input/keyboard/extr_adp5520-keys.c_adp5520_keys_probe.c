
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct platform_device {scalar_t__ id; TYPE_3__ dev; int name; } ;
struct TYPE_9__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; int keycodesize; int keycodemax; int keybit; int evbit; int * keycode; TYPE_2__ id; TYPE_1__ dev; int name; } ;
struct adp5520_keys_platform_data {unsigned char rows_en_mask; unsigned char cols_en_mask; int keymapsize; scalar_t__ repeat; int keymap; } ;
struct TYPE_11__ {int notifier_call; } ;
struct adp5520_keys {TYPE_7__ notifier; int master; int * keycode; struct input_dev* input; } ;


 unsigned char ADP5520_C3_MODE ;
 unsigned char ADP5520_COL_C3 ;
 int ADP5520_GPIO_CFG_1 ;
 int ADP5520_GPIO_PULLUP ;
 int ADP5520_KP_IEN ;
 int ADP5520_KR_IEN ;
 int ADP5520_LED_CONTROL ;
 unsigned char ADP5520_R3_MODE ;
 unsigned char ADP5520_ROW_R3 ;
 int BUS_I2C ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_REP ;
 int GFP_KERNEL ;
 scalar_t__ ID_ADP5520 ;
 int KEY_RESERVED ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int adp5520_keys_notifier ;
 int adp5520_register_notifier (int ,TYPE_7__*,int) ;
 int adp5520_set_bits (int ,int ,unsigned char) ;
 int dev_err (TYPE_3__*,char*) ;
 struct adp5520_keys_platform_data* dev_get_platdata (TYPE_3__*) ;
 struct input_dev* devm_input_allocate_device (TYPE_3__*) ;
 struct adp5520_keys* devm_kzalloc (TYPE_3__*,int,int ) ;
 int input_register_device (struct input_dev*) ;
 int memcpy (int *,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct adp5520_keys*) ;

__attribute__((used)) static int adp5520_keys_probe(struct platform_device *pdev)
{
 struct adp5520_keys_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct input_dev *input;
 struct adp5520_keys *dev;
 int ret, i;
 unsigned char en_mask, ctl_mask = 0;

 if (pdev->id != ID_ADP5520) {
  dev_err(&pdev->dev, "only ADP5520 supports Keypad\n");
  return -EINVAL;
 }

 if (!pdata) {
  dev_err(&pdev->dev, "missing platform data\n");
  return -EINVAL;
 }

 if (!(pdata->rows_en_mask && pdata->cols_en_mask))
  return -EINVAL;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  dev_err(&pdev->dev, "failed to alloc memory\n");
  return -ENOMEM;
 }

 input = devm_input_allocate_device(&pdev->dev);
 if (!input)
  return -ENOMEM;

 dev->master = pdev->dev.parent;
 dev->input = input;

 input->name = pdev->name;
 input->phys = "adp5520-keys/input0";
 input->dev.parent = &pdev->dev;

 input->id.bustype = BUS_I2C;
 input->id.vendor = 0x0001;
 input->id.product = 0x5520;
 input->id.version = 0x0001;

 input->keycodesize = sizeof(dev->keycode[0]);
 input->keycodemax = pdata->keymapsize;
 input->keycode = dev->keycode;

 memcpy(dev->keycode, pdata->keymap,
  pdata->keymapsize * input->keycodesize);


 __set_bit(EV_KEY, input->evbit);

 if (pdata->repeat)
  __set_bit(EV_REP, input->evbit);

 for (i = 0; i < input->keycodemax; i++)
  __set_bit(dev->keycode[i], input->keybit);
 __clear_bit(KEY_RESERVED, input->keybit);

 ret = input_register_device(input);
 if (ret) {
  dev_err(&pdev->dev, "unable to register input device\n");
  return ret;
 }

 en_mask = pdata->rows_en_mask | pdata->cols_en_mask;

 ret = adp5520_set_bits(dev->master, ADP5520_GPIO_CFG_1, en_mask);

 if (en_mask & ADP5520_COL_C3)
  ctl_mask |= ADP5520_C3_MODE;

 if (en_mask & ADP5520_ROW_R3)
  ctl_mask |= ADP5520_R3_MODE;

 if (ctl_mask)
  ret |= adp5520_set_bits(dev->master, ADP5520_LED_CONTROL,
   ctl_mask);

 ret |= adp5520_set_bits(dev->master, ADP5520_GPIO_PULLUP,
  pdata->rows_en_mask);

 if (ret) {
  dev_err(&pdev->dev, "failed to write\n");
  return -EIO;
 }

 dev->notifier.notifier_call = adp5520_keys_notifier;
 ret = adp5520_register_notifier(dev->master, &dev->notifier,
   ADP5520_KP_IEN | ADP5520_KR_IEN);
 if (ret) {
  dev_err(&pdev->dev, "failed to register notifier\n");
  return ret;
 }

 platform_set_drvdata(pdev, dev);
 return 0;
}
