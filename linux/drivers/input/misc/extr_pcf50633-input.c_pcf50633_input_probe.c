
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_input {int pcf; struct input_dev* input_dev; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {char* name; int* evbit; int keybit; TYPE_2__ id; } ;


 int BIT (int ) ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_PWR ;
 int GFP_KERNEL ;
 int KEY_POWER ;
 int PCF50633_IRQ_ONKEYF ;
 int PCF50633_IRQ_ONKEYR ;
 int dev_to_pcf50633 (int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct pcf50633_input*) ;
 struct pcf50633_input* kzalloc (int,int ) ;
 int pcf50633_input_irq ;
 int pcf50633_register_irq (int ,int ,int ,struct pcf50633_input*) ;
 int platform_set_drvdata (struct platform_device*,struct pcf50633_input*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int pcf50633_input_probe(struct platform_device *pdev)
{
 struct pcf50633_input *input;
 struct input_dev *input_dev;
 int ret;


 input = kzalloc(sizeof(*input), GFP_KERNEL);
 if (!input)
  return -ENOMEM;

 input_dev = input_allocate_device();
 if (!input_dev) {
  kfree(input);
  return -ENOMEM;
 }

 platform_set_drvdata(pdev, input);
 input->pcf = dev_to_pcf50633(pdev->dev.parent);
 input->input_dev = input_dev;

 input_dev->name = "PCF50633 PMU events";
 input_dev->id.bustype = BUS_I2C;
 input_dev->evbit[0] = BIT(EV_KEY) | BIT(EV_PWR);
 set_bit(KEY_POWER, input_dev->keybit);

 ret = input_register_device(input_dev);
 if (ret) {
  input_free_device(input_dev);
  kfree(input);
  return ret;
 }
 pcf50633_register_irq(input->pcf, PCF50633_IRQ_ONKEYR,
    pcf50633_input_irq, input);
 pcf50633_register_irq(input->pcf, PCF50633_IRQ_ONKEYF,
    pcf50633_input_irq, input);

 return 0;
}
