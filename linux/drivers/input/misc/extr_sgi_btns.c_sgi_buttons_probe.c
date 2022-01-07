
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct input_polled_dev {struct input_dev* input; int poll_interval; int poll; struct buttons_dev* private; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; char* phys; int keycodemax; int keycodesize; int keybit; int evbit; int * keycode; TYPE_2__ dev; TYPE_1__ id; } ;
struct buttons_dev {struct input_polled_dev* poll_dev; int * keymap; } ;


 int ARRAY_SIZE (int *) ;
 int BUS_HOST ;
 int BUTTONS_POLL_INTERVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_MSC ;
 int GFP_KERNEL ;
 int KEY_RESERVED ;
 int MSC_SCAN ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int handle_buttons ;
 struct input_polled_dev* input_allocate_polled_device () ;
 int input_free_polled_device (struct input_polled_dev*) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct buttons_dev*) ;
 struct buttons_dev* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct buttons_dev*) ;
 int * sgi_map ;

__attribute__((used)) static int sgi_buttons_probe(struct platform_device *pdev)
{
 struct buttons_dev *bdev;
 struct input_polled_dev *poll_dev;
 struct input_dev *input;
 int error, i;

 bdev = kzalloc(sizeof(struct buttons_dev), GFP_KERNEL);
 poll_dev = input_allocate_polled_device();
 if (!bdev || !poll_dev) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 memcpy(bdev->keymap, sgi_map, sizeof(bdev->keymap));

 poll_dev->private = bdev;
 poll_dev->poll = handle_buttons;
 poll_dev->poll_interval = BUTTONS_POLL_INTERVAL;

 input = poll_dev->input;
 input->name = "SGI buttons";
 input->phys = "sgi/input0";
 input->id.bustype = BUS_HOST;
 input->dev.parent = &pdev->dev;

 input->keycode = bdev->keymap;
 input->keycodemax = ARRAY_SIZE(bdev->keymap);
 input->keycodesize = sizeof(unsigned short);

 input_set_capability(input, EV_MSC, MSC_SCAN);
 __set_bit(EV_KEY, input->evbit);
 for (i = 0; i < ARRAY_SIZE(sgi_map); i++)
  __set_bit(bdev->keymap[i], input->keybit);
 __clear_bit(KEY_RESERVED, input->keybit);

 bdev->poll_dev = poll_dev;
 platform_set_drvdata(pdev, bdev);

 error = input_register_polled_device(poll_dev);
 if (error)
  goto err_free_mem;

 return 0;

 err_free_mem:
 input_free_polled_device(poll_dev);
 kfree(bdev);
 return error;
}
