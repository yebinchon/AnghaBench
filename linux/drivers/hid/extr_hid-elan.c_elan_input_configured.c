
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int version; int product; int vendor; int bustype; } ;
struct input_dev {char* name; int propbit; int keybit; TYPE_2__ dev; TYPE_1__ id; int uniq; int phys; } ;
struct hid_input {int dummy; } ;
struct hid_device {int dev; int version; int product; int vendor; int bus; int uniq; int phys; } ;
struct elan_drvdata {struct input_dev* input; int res_y; int res_x; int max_y; int max_x; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int ELAN_MAX_FINGERS ;
 int ELAN_MAX_PRESSURE ;
 int ENOMEM ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_BUTTONPAD ;
 int __set_bit (int ,int ) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int elan_get_device_params (struct hid_device*) ;
 int hid_err (struct hid_device*,char*,int) ;
 struct elan_drvdata* hid_get_drvdata (struct hid_device*) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_free_device (struct input_dev*) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 scalar_t__ is_not_elan_touchpad (struct hid_device*) ;

__attribute__((used)) static int elan_input_configured(struct hid_device *hdev, struct hid_input *hi)
{
 int ret;
 struct input_dev *input;
 struct elan_drvdata *drvdata = hid_get_drvdata(hdev);

 if (is_not_elan_touchpad(hdev))
  return 0;

 ret = elan_get_device_params(hdev);
 if (ret)
  return ret;

 input = devm_input_allocate_device(&hdev->dev);
 if (!input)
  return -ENOMEM;

 input->name = "Elan Touchpad";
 input->phys = hdev->phys;
 input->uniq = hdev->uniq;
 input->id.bustype = hdev->bus;
 input->id.vendor = hdev->vendor;
 input->id.product = hdev->product;
 input->id.version = hdev->version;
 input->dev.parent = &hdev->dev;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0, drvdata->max_x,
        0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, drvdata->max_y,
        0, 0);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0, ELAN_MAX_PRESSURE,
        0, 0);

 __set_bit(BTN_LEFT, input->keybit);
 __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);

 ret = input_mt_init_slots(input, ELAN_MAX_FINGERS, INPUT_MT_POINTER);
 if (ret) {
  hid_err(hdev, "Failed to init elan MT slots: %d\n", ret);
  return ret;
 }

 input_abs_set_res(input, ABS_X, drvdata->res_x);
 input_abs_set_res(input, ABS_Y, drvdata->res_y);

 ret = input_register_device(input);
 if (ret) {
  hid_err(hdev, "Failed to register elan input device: %d\n",
   ret);
  input_free_device(input);
  return ret;
 }

 drvdata->input = input;

 return 0;
}
