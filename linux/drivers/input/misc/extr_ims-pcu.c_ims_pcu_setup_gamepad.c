
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct input_dev {int evbit; int keybit; TYPE_1__ dev; int id; int phys; int name; } ;
struct ims_pcu_gamepad {int phys; int name; struct input_dev* input; } ;
struct ims_pcu {int device_no; struct ims_pcu_gamepad* gamepad; int dev; TYPE_2__* ctrl_intf; int udev; } ;
struct TYPE_4__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_A ;
 int BTN_B ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_X ;
 int BTN_Y ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int __set_bit (int ,int ) ;
 int dev_err (int ,char*,...) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int kfree (struct ims_pcu_gamepad*) ;
 struct ims_pcu_gamepad* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,int) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 int usb_to_input_id (int ,int *) ;

__attribute__((used)) static int ims_pcu_setup_gamepad(struct ims_pcu *pcu)
{
 struct ims_pcu_gamepad *gamepad;
 struct input_dev *input;
 int error;

 gamepad = kzalloc(sizeof(struct ims_pcu_gamepad), GFP_KERNEL);
 input = input_allocate_device();
 if (!gamepad || !input) {
  dev_err(pcu->dev,
   "Not enough memory for gamepad device\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 gamepad->input = input;

 snprintf(gamepad->name, sizeof(gamepad->name),
   "IMS PCU#%d Gamepad Interface", pcu->device_no);

 usb_make_path(pcu->udev, gamepad->phys, sizeof(gamepad->phys));
 strlcat(gamepad->phys, "/input1", sizeof(gamepad->phys));

 input->name = gamepad->name;
 input->phys = gamepad->phys;
 usb_to_input_id(pcu->udev, &input->id);
 input->dev.parent = &pcu->ctrl_intf->dev;

 __set_bit(EV_KEY, input->evbit);
 __set_bit(BTN_A, input->keybit);
 __set_bit(BTN_B, input->keybit);
 __set_bit(BTN_X, input->keybit);
 __set_bit(BTN_Y, input->keybit);
 __set_bit(BTN_START, input->keybit);
 __set_bit(BTN_SELECT, input->keybit);

 __set_bit(EV_ABS, input->evbit);
 input_set_abs_params(input, ABS_X, -1, 1, 0, 0);
 input_set_abs_params(input, ABS_Y, -1, 1, 0, 0);

 error = input_register_device(input);
 if (error) {
  dev_err(pcu->dev,
   "Failed to register gamepad input device: %d\n",
   error);
  goto err_free_mem;
 }

 pcu->gamepad = gamepad;
 return 0;

err_free_mem:
 input_free_device(input);
 kfree(gamepad);
 return -ENOMEM;
}
