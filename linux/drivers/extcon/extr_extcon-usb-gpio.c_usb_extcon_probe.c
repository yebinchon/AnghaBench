
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct usb_extcon_info {scalar_t__ id_irq; scalar_t__ vbus_irq; TYPE_1__ wq_detcable; void* vbus_gpiod; void* id_gpiod; int debounce_jiffies; void* edev; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; int name; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int INIT_DELAYED_WORK (TYPE_1__*,int (*) (int *)) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int USB_GPIO_DEBOUNCE_MS ;
 int dev_err (struct device*,char*) ;
 int device_set_wakeup_capable (struct device*,int) ;
 void* devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,void*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct usb_extcon_info* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct usb_extcon_info*) ;
 int gpiod_set_debounce (void*,int) ;
 void* gpiod_to_irq (void*) ;
 int msecs_to_jiffies (int) ;
 int platform_set_drvdata (struct platform_device*,struct usb_extcon_info*) ;
 int usb_extcon_cable ;
 int usb_extcon_detect_cable (int *) ;
 int usb_irq_handler ;

__attribute__((used)) static int usb_extcon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct usb_extcon_info *info;
 int ret;

 if (!np)
  return -EINVAL;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = dev;
 info->id_gpiod = devm_gpiod_get_optional(&pdev->dev, "id", GPIOD_IN);
 info->vbus_gpiod = devm_gpiod_get_optional(&pdev->dev, "vbus",
         GPIOD_IN);

 if (!info->id_gpiod && !info->vbus_gpiod) {
  dev_err(dev, "failed to get gpios\n");
  return -ENODEV;
 }

 if (IS_ERR(info->id_gpiod))
  return PTR_ERR(info->id_gpiod);

 if (IS_ERR(info->vbus_gpiod))
  return PTR_ERR(info->vbus_gpiod);

 info->edev = devm_extcon_dev_allocate(dev, usb_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(dev, info->edev);
 if (ret < 0) {
  dev_err(dev, "failed to register extcon device\n");
  return ret;
 }

 if (info->id_gpiod)
  ret = gpiod_set_debounce(info->id_gpiod,
      USB_GPIO_DEBOUNCE_MS * 1000);
 if (!ret && info->vbus_gpiod)
  ret = gpiod_set_debounce(info->vbus_gpiod,
      USB_GPIO_DEBOUNCE_MS * 1000);

 if (ret < 0)
  info->debounce_jiffies = msecs_to_jiffies(USB_GPIO_DEBOUNCE_MS);

 INIT_DELAYED_WORK(&info->wq_detcable, usb_extcon_detect_cable);

 if (info->id_gpiod) {
  info->id_irq = gpiod_to_irq(info->id_gpiod);
  if (info->id_irq < 0) {
   dev_err(dev, "failed to get ID IRQ\n");
   return info->id_irq;
  }

  ret = devm_request_threaded_irq(dev, info->id_irq, ((void*)0),
      usb_irq_handler,
      IRQF_TRIGGER_RISING |
      IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
      pdev->name, info);
  if (ret < 0) {
   dev_err(dev, "failed to request handler for ID IRQ\n");
   return ret;
  }
 }

 if (info->vbus_gpiod) {
  info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
  if (info->vbus_irq < 0) {
   dev_err(dev, "failed to get VBUS IRQ\n");
   return info->vbus_irq;
  }

  ret = devm_request_threaded_irq(dev, info->vbus_irq, ((void*)0),
      usb_irq_handler,
      IRQF_TRIGGER_RISING |
      IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
      pdev->name, info);
  if (ret < 0) {
   dev_err(dev, "failed to request handler for VBUS IRQ\n");
   return ret;
  }
 }

 platform_set_drvdata(pdev, info);
 device_set_wakeup_capable(&pdev->dev, 1);


 usb_extcon_detect_cable(&info->wq_detcable.work);

 return 0;
}
