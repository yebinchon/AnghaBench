
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct input_polled_dev {TYPE_3__* input; int poll_interval; int poll; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int bustype; } ;
struct TYPE_6__ {char* name; char* phys; TYPE_2__ dev; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int RB532_BTN_KSYM ;
 int RB532_BTN_RATE ;
 int dev_set_drvdata (int *,struct input_polled_dev*) ;
 struct input_polled_dev* input_allocate_polled_device () ;
 int input_free_polled_device (struct input_polled_dev*) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 int rb532_button_poll ;

__attribute__((used)) static int rb532_button_probe(struct platform_device *pdev)
{
 struct input_polled_dev *poll_dev;
 int error;

 poll_dev = input_allocate_polled_device();
 if (!poll_dev)
  return -ENOMEM;

 poll_dev->poll = rb532_button_poll;
 poll_dev->poll_interval = RB532_BTN_RATE;

 poll_dev->input->name = "rb532 button";
 poll_dev->input->phys = "rb532/button0";
 poll_dev->input->id.bustype = BUS_HOST;
 poll_dev->input->dev.parent = &pdev->dev;

 dev_set_drvdata(&pdev->dev, poll_dev);

 input_set_capability(poll_dev->input, EV_KEY, RB532_BTN_KSYM);

 error = input_register_polled_device(poll_dev);
 if (error) {
  input_free_polled_device(poll_dev);
  return error;
 }

 return 0;
}
