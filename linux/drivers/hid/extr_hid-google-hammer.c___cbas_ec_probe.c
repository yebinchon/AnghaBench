
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct cros_ec_device {int event_notifier; } ;
struct TYPE_10__ {int notifier_call; } ;
struct TYPE_9__ {int base_present; TYPE_6__ notifier; TYPE_2__* dev; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int ENXIO ;
 int EV_SW ;
 int SW_TABLET_MODE ;
 int blocking_notifier_chain_register (int *,TYPE_6__*) ;
 TYPE_5__ cbas_ec ;
 int cbas_ec_notify ;
 int cbas_ec_query_base (struct cros_ec_device*,int,int*) ;
 int cbas_ec_set_input (struct input_dev*) ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct cros_ec_device* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_2__*,int) ;
 struct input_dev* devm_input_allocate_device (TYPE_2__*) ;
 int input_register_device (struct input_dev*) ;
 int input_report_switch (struct input_dev*,int ,int) ;
 int input_set_capability (struct input_dev*,int ,int ) ;

__attribute__((used)) static int __cbas_ec_probe(struct platform_device *pdev)
{
 struct cros_ec_device *ec = dev_get_drvdata(pdev->dev.parent);
 struct input_dev *input;
 bool base_supported;
 int error;

 error = cbas_ec_query_base(ec, 0, &base_supported);
 if (error)
  return error;

 if (!base_supported)
  return -ENXIO;

 input = devm_input_allocate_device(&pdev->dev);
 if (!input)
  return -ENOMEM;

 input->name = "Whiskers Tablet Mode Switch";
 input->id.bustype = BUS_HOST;

 input_set_capability(input, EV_SW, SW_TABLET_MODE);

 error = input_register_device(input);
 if (error) {
  dev_err(&pdev->dev, "cannot register input device: %d\n",
   error);
  return error;
 }


 error = cbas_ec_query_base(ec, 1, &cbas_ec.base_present);
 if (error) {
  dev_err(&pdev->dev, "cannot query base state: %d\n", error);
  return error;
 }

 input_report_switch(input, SW_TABLET_MODE, !cbas_ec.base_present);

 cbas_ec_set_input(input);

 cbas_ec.dev = &pdev->dev;
 cbas_ec.notifier.notifier_call = cbas_ec_notify;
 error = blocking_notifier_chain_register(&ec->event_notifier,
       &cbas_ec.notifier);
 if (error) {
  dev_err(&pdev->dev, "cannot register notifier: %d\n", error);
  cbas_ec_set_input(((void*)0));
  return error;
 }

 device_init_wakeup(&pdev->dev, 1);
 return 0;
}
