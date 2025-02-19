
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct pcap_keys {int pcap; struct input_dev* input; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {char* phys; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; int name; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int KEY_HP ;
 int KEY_POWER ;
 int PCAP_IRQ_MIC ;
 int PCAP_IRQ_ONOFF ;
 int __set_bit (int ,int ) ;
 int dev_get_drvdata (int ) ;
 int free_irq (int ,struct pcap_keys*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (struct pcap_keys*) ;
 struct pcap_keys* kmalloc (int,int ) ;
 int pcap_keys_handler ;
 int pcap_to_irq (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pcap_keys*) ;
 int request_irq (int ,int ,int ,char*,struct pcap_keys*) ;

__attribute__((used)) static int pcap_keys_probe(struct platform_device *pdev)
{
 int err = -ENOMEM;
 struct pcap_keys *pcap_keys;
 struct input_dev *input_dev;

 pcap_keys = kmalloc(sizeof(struct pcap_keys), GFP_KERNEL);
 if (!pcap_keys)
  return err;

 pcap_keys->pcap = dev_get_drvdata(pdev->dev.parent);

 input_dev = input_allocate_device();
 if (!input_dev)
  goto fail;

 pcap_keys->input = input_dev;

 platform_set_drvdata(pdev, pcap_keys);
 input_dev->name = pdev->name;
 input_dev->phys = "pcap-keys/input0";
 input_dev->id.bustype = BUS_HOST;
 input_dev->dev.parent = &pdev->dev;

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(KEY_POWER, input_dev->keybit);
 __set_bit(KEY_HP, input_dev->keybit);

 err = input_register_device(input_dev);
 if (err)
  goto fail_allocate;

 err = request_irq(pcap_to_irq(pcap_keys->pcap, PCAP_IRQ_ONOFF),
   pcap_keys_handler, 0, "Power key", pcap_keys);
 if (err)
  goto fail_register;

 err = request_irq(pcap_to_irq(pcap_keys->pcap, PCAP_IRQ_MIC),
   pcap_keys_handler, 0, "Headphone button", pcap_keys);
 if (err)
  goto fail_pwrkey;

 return 0;

fail_pwrkey:
 free_irq(pcap_to_irq(pcap_keys->pcap, PCAP_IRQ_ONOFF), pcap_keys);
fail_register:
 input_unregister_device(input_dev);
 goto fail;
fail_allocate:
 input_free_device(input_dev);
fail:
 kfree(pcap_keys);
 return err;
}
