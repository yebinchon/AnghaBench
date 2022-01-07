
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct input_dev {int keycodesize; int keybit; int evbit; int keycodemax; int * keycode; TYPE_1__ dev; int id; int phys; int name; } ;
struct ims_pcu_buttons {struct input_dev* input; int * keymap; int phys; int name; } ;
struct ims_pcu {int device_no; int dev; TYPE_2__* ctrl_intf; int udev; struct ims_pcu_buttons buttons; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int EV_KEY ;
 int IMS_PCU_KEYMAP_LEN ;
 int KEY_RESERVED ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dev_err (int ,char*,...) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int memcpy (int *,unsigned short const*,int) ;
 int snprintf (int ,int,char*,int) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 int usb_to_input_id (int ,int *) ;

__attribute__((used)) static int ims_pcu_setup_buttons(struct ims_pcu *pcu,
     const unsigned short *keymap,
     size_t keymap_len)
{
 struct ims_pcu_buttons *buttons = &pcu->buttons;
 struct input_dev *input;
 int i;
 int error;

 input = input_allocate_device();
 if (!input) {
  dev_err(pcu->dev,
   "Not enough memory for input input device\n");
  return -ENOMEM;
 }

 snprintf(buttons->name, sizeof(buttons->name),
   "IMS PCU#%d Button Interface", pcu->device_no);

 usb_make_path(pcu->udev, buttons->phys, sizeof(buttons->phys));
 strlcat(buttons->phys, "/input0", sizeof(buttons->phys));

 memcpy(buttons->keymap, keymap, sizeof(*keymap) * keymap_len);

 input->name = buttons->name;
 input->phys = buttons->phys;
 usb_to_input_id(pcu->udev, &input->id);
 input->dev.parent = &pcu->ctrl_intf->dev;

 input->keycode = buttons->keymap;
 input->keycodemax = ARRAY_SIZE(buttons->keymap);
 input->keycodesize = sizeof(buttons->keymap[0]);

 __set_bit(EV_KEY, input->evbit);
 for (i = 0; i < IMS_PCU_KEYMAP_LEN; i++)
  __set_bit(buttons->keymap[i], input->keybit);
 __clear_bit(KEY_RESERVED, input->keybit);

 error = input_register_device(input);
 if (error) {
  dev_err(pcu->dev,
   "Failed to register buttons input device: %d\n",
   error);
  input_free_device(input);
  return error;
 }

 buttons->input = input;
 return 0;
}
