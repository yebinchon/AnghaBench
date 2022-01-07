
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct jornadakbd {struct input_polled_dev* poll_dev; scalar_t__* keymap; } ;
struct input_polled_dev {int poll_interval; struct input_dev* input; int poll; struct jornadakbd* private; } ;
struct TYPE_4__ {int bustype; } ;
struct TYPE_3__ {int * parent; } ;
struct input_dev {int* evbit; char* name; char* phys; int keycodesize; int keybit; TYPE_2__ id; TYPE_1__ dev; int keycodemax; scalar_t__* keycode; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int KEY_RESERVED ;
 int MSC_SCAN ;
 int __clear_bit (int ,int ) ;
 int __set_bit (scalar_t__,int ) ;
 int dev_err (int *,char*) ;
 struct input_polled_dev* devm_input_allocate_polled_device (int *) ;
 struct jornadakbd* devm_kzalloc (int *,int,int ) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int jornada_scancodes ;
 int jornadakbd680_poll ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int jornada680kbd_probe(struct platform_device *pdev)
{
 struct jornadakbd *jornadakbd;
 struct input_polled_dev *poll_dev;
 struct input_dev *input_dev;
 int i, error;

 jornadakbd = devm_kzalloc(&pdev->dev, sizeof(struct jornadakbd),
      GFP_KERNEL);
 if (!jornadakbd)
  return -ENOMEM;

 poll_dev = devm_input_allocate_polled_device(&pdev->dev);
 if (!poll_dev) {
  dev_err(&pdev->dev, "failed to allocate polled input device\n");
  return -ENOMEM;
 }

 jornadakbd->poll_dev = poll_dev;

 memcpy(jornadakbd->keymap, jornada_scancodes,
  sizeof(jornadakbd->keymap));

 poll_dev->private = jornadakbd;
 poll_dev->poll = jornadakbd680_poll;
 poll_dev->poll_interval = 50;

 input_dev = poll_dev->input;
 input_dev->evbit[0] = BIT(EV_KEY) | BIT(EV_REP);
 input_dev->name = "HP Jornada 680 keyboard";
 input_dev->phys = "jornadakbd/input0";
 input_dev->keycode = jornadakbd->keymap;
 input_dev->keycodesize = sizeof(unsigned short);
 input_dev->keycodemax = ARRAY_SIZE(jornada_scancodes);
 input_dev->dev.parent = &pdev->dev;
 input_dev->id.bustype = BUS_HOST;

 for (i = 0; i < 128; i++)
  if (jornadakbd->keymap[i])
   __set_bit(jornadakbd->keymap[i], input_dev->keybit);
 __clear_bit(KEY_RESERVED, input_dev->keybit);

 input_set_capability(input_dev, EV_MSC, MSC_SCAN);

 error = input_register_polled_device(jornadakbd->poll_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to register polled input device\n");
  return error;
 }

 return 0;
}
