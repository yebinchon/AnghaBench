
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; int notifier_call; } ;
struct rave_sp_power_button {TYPE_1__ nb; struct input_dev* idev; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct input_dev {int name; } ;


 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int KEY_POWER ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct rave_sp_power_button* devm_kzalloc (struct device*,int,int ) ;
 int devm_rave_sp_register_event_notifier (struct device*,TYPE_1__*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int rave_sp_power_button_event ;

__attribute__((used)) static int rave_sp_pwrbutton_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rave_sp_power_button *pb;
 struct input_dev *idev;
 int error;

 pb = devm_kzalloc(dev, sizeof(*pb), GFP_KERNEL);
 if (!pb)
  return -ENOMEM;

 idev = devm_input_allocate_device(dev);
 if (!idev)
  return -ENOMEM;

 idev->name = pdev->name;

 input_set_capability(idev, EV_KEY, KEY_POWER);

 error = input_register_device(idev);
 if (error)
  return error;

 pb->idev = idev;
 pb->nb.notifier_call = rave_sp_power_button_event;
 pb->nb.priority = 128;

 error = devm_rave_sp_register_event_notifier(dev, &pb->nb);
 if (error)
  return error;

 return 0;
}
