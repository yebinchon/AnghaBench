
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct qcom_usb_extcon_info {scalar_t__ irq; TYPE_1__ wq_detcable; int debounce_jiffies; int edev; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (TYPE_1__*,int (*) (int *)) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int USB_ID_DEBOUNCE_MS ;
 int dev_err (struct device*,char*) ;
 int device_init_wakeup (struct device*,int) ;
 int devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,int ) ;
 struct qcom_usb_extcon_info* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct qcom_usb_extcon_info*) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct qcom_usb_extcon_info*) ;
 int qcom_usb_extcon_cable ;
 int qcom_usb_extcon_detect_cable (int *) ;
 int qcom_usb_irq_handler ;

__attribute__((used)) static int qcom_usb_extcon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct qcom_usb_extcon_info *info;
 int ret;

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->edev = devm_extcon_dev_allocate(dev, qcom_usb_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(dev, info->edev);
 if (ret < 0) {
  dev_err(dev, "failed to register extcon device\n");
  return ret;
 }

 info->debounce_jiffies = msecs_to_jiffies(USB_ID_DEBOUNCE_MS);
 INIT_DELAYED_WORK(&info->wq_detcable, qcom_usb_extcon_detect_cable);

 info->irq = platform_get_irq_byname(pdev, "usb_id");
 if (info->irq < 0)
  return info->irq;

 ret = devm_request_threaded_irq(dev, info->irq, ((void*)0),
     qcom_usb_irq_handler,
     IRQF_TRIGGER_RISING |
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     pdev->name, info);
 if (ret < 0) {
  dev_err(dev, "failed to request handler for ID IRQ\n");
  return ret;
 }

 platform_set_drvdata(pdev, info);
 device_init_wakeup(dev, 1);


 qcom_usb_extcon_detect_cable(&info->wq_detcable.work);

 return 0;
}
