
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int of_node; int parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct da9063_onkey {int key_power; TYPE_3__* input; int work; int phys; TYPE_1__* config; int regmap; TYPE_5__* dev; } ;
struct TYPE_12__ {TYPE_5__* parent; } ;
struct TYPE_13__ {char* name; TYPE_2__ dev; int phys; } ;
struct TYPE_11__ {char* name; } ;


 int ENOMEM ;
 int ENXIO ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int KEY_POWER ;
 int da9063_cancel_poll ;
 int da9063_compatible_reg_id_table ;
 int da9063_onkey_irq_handler ;
 int da9063_poll_on ;
 int dev_err (TYPE_5__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 int devm_add_action (TYPE_5__*,int ,struct da9063_onkey*) ;
 TYPE_3__* devm_input_allocate_device (TYPE_5__*) ;
 struct da9063_onkey* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_5__*,int,int *,int ,int,char*,struct da9063_onkey*) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_property_read_bool (int ,char*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int da9063_onkey_probe(struct platform_device *pdev)
{
 struct da9063_onkey *onkey;
 const struct of_device_id *match;
 int irq;
 int error;

 match = of_match_node(da9063_compatible_reg_id_table,
         pdev->dev.of_node);
 if (!match)
  return -ENXIO;

 onkey = devm_kzalloc(&pdev->dev, sizeof(struct da9063_onkey),
        GFP_KERNEL);
 if (!onkey) {
  dev_err(&pdev->dev, "Failed to allocate memory.\n");
  return -ENOMEM;
 }

 onkey->config = match->data;
 onkey->dev = &pdev->dev;

 onkey->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!onkey->regmap) {
  dev_err(&pdev->dev, "Parent regmap unavailable.\n");
  return -ENXIO;
 }

 onkey->key_power = !of_property_read_bool(pdev->dev.of_node,
        "dlg,disable-key-power");

 onkey->input = devm_input_allocate_device(&pdev->dev);
 if (!onkey->input) {
  dev_err(&pdev->dev, "Failed to allocated input device.\n");
  return -ENOMEM;
 }

 onkey->input->name = onkey->config->name;
 snprintf(onkey->phys, sizeof(onkey->phys), "%s/input0",
   onkey->config->name);
 onkey->input->phys = onkey->phys;
 onkey->input->dev.parent = &pdev->dev;

 input_set_capability(onkey->input, EV_KEY, KEY_POWER);

 INIT_DELAYED_WORK(&onkey->work, da9063_poll_on);

 error = devm_add_action(&pdev->dev, da9063_cancel_poll, onkey);
 if (error) {
  dev_err(&pdev->dev,
   "Failed to add cancel poll action: %d\n",
   error);
  return error;
 }

 irq = platform_get_irq_byname(pdev, "ONKEY");
 if (irq < 0)
  return irq;

 error = devm_request_threaded_irq(&pdev->dev, irq,
       ((void*)0), da9063_onkey_irq_handler,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       "ONKEY", onkey);
 if (error) {
  dev_err(&pdev->dev,
   "Failed to request IRQ %d: %d\n", irq, error);
  return error;
 }

 error = input_register_device(onkey->input);
 if (error) {
  dev_err(&pdev->dev,
   "Failed to register input device: %d\n", error);
  return error;
 }

 return 0;
}
