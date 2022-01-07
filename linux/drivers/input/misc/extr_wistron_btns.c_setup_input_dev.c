
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * parent; } ;
struct TYPE_8__ {int bustype; } ;
struct input_dev {char* name; char* phys; TYPE_2__ dev; TYPE_1__ id; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {struct input_dev* input; int poll_interval; int poll; int open; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int POLL_INTERVAL_DEFAULT ;
 TYPE_3__* input_allocate_polled_device () ;
 int input_free_polled_device (TYPE_3__*) ;
 int input_register_polled_device (TYPE_3__*) ;
 int keymap ;
 int sparse_keymap_setup (struct input_dev*,int ,int ) ;
 TYPE_4__* wistron_device ;
 int wistron_flush ;
 TYPE_3__* wistron_idev ;
 int wistron_poll ;
 int wistron_setup_keymap ;

__attribute__((used)) static int setup_input_dev(void)
{
 struct input_dev *input_dev;
 int error;

 wistron_idev = input_allocate_polled_device();
 if (!wistron_idev)
  return -ENOMEM;

 wistron_idev->open = wistron_flush;
 wistron_idev->poll = wistron_poll;
 wistron_idev->poll_interval = POLL_INTERVAL_DEFAULT;

 input_dev = wistron_idev->input;
 input_dev->name = "Wistron laptop buttons";
 input_dev->phys = "wistron/input0";
 input_dev->id.bustype = BUS_HOST;
 input_dev->dev.parent = &wistron_device->dev;

 error = sparse_keymap_setup(input_dev, keymap, wistron_setup_keymap);
 if (error)
  goto err_free_dev;

 error = input_register_polled_device(wistron_idev);
 if (error)
  goto err_free_dev;

 return 0;

 err_free_dev:
 input_free_polled_device(wistron_idev);
 return error;
}
