
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct palmas_usb_platform_data {int wakeup; } ;
struct TYPE_11__ {int work; } ;
struct palmas_usb {int wakeup; int enable_id_detection; int enable_vbus_detection; int enable_gpio_id_detection; int enable_gpio_vbus_detection; int id_irq; scalar_t__ gpio_id_irq; int vbus_irq; scalar_t__ gpio_vbus_irq; TYPE_9__ wq_detectid; void* vbus_gpiod; void* vbus_otg_irq; TYPE_1__* dev; void* id_gpiod; void* id_otg_irq; void* edev; struct palmas* palmas; int sw_debounce_jiffies; } ;
struct palmas {int irq_data; struct palmas_usb* usb; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int INIT_DELAYED_WORK (TYPE_9__*,int (*) (int *)) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PALMAS_ID_IRQ ;
 int PALMAS_ID_OTG_IRQ ;
 int PALMAS_PRIMARY_SECONDARY_PAD1 ;
 int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK ;
 int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT ;
 int PALMAS_PU_PD_OD_BASE ;
 int PALMAS_VBUS_IRQ ;
 int PALMAS_VBUS_OTG_IRQ ;
 int PTR_ERR (void*) ;
 int USB_GPIO_DEBOUNCE_MS ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct palmas* dev_get_drvdata (int ) ;
 struct palmas_usb_platform_data* dev_get_platdata (TYPE_1__*) ;
 int device_set_wakeup_capable (TYPE_1__*,int) ;
 void* devm_extcon_dev_allocate (TYPE_1__*,int ) ;
 int devm_extcon_dev_register (TYPE_1__*,void*) ;
 void* devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 struct palmas_usb* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int (*) (int,struct palmas_usb*),int,char*,struct palmas_usb*) ;
 int gpiod_set_debounce (void*,int) ;
 void* gpiod_to_irq (void*) ;
 int msecs_to_jiffies (int) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int palmas_enable_irq (struct palmas_usb*) ;
 int palmas_extcon_cable ;
 int palmas_gpio_id_detect (int *) ;
 int palmas_gpio_id_irq_handler (int,struct palmas_usb*) ;
 int palmas_id_irq_handler (int,struct palmas_usb*) ;
 int palmas_update_bits (struct palmas*,int ,int ,int ,int) ;
 int palmas_usb_wakeup (struct palmas*,int) ;
 int palmas_vbus_irq_handler (int,struct palmas_usb*) ;
 int platform_set_drvdata (struct platform_device*,struct palmas_usb*) ;
 void* regmap_irq_get_virq (int ,int ) ;

__attribute__((used)) static int palmas_usb_probe(struct platform_device *pdev)
{
 struct palmas *palmas = dev_get_drvdata(pdev->dev.parent);
 struct palmas_usb_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device_node *node = pdev->dev.of_node;
 struct palmas_usb *palmas_usb;
 int status;

 if (!palmas) {
  dev_err(&pdev->dev, "failed to get valid parent\n");
  return -EINVAL;
 }

 palmas_usb = devm_kzalloc(&pdev->dev, sizeof(*palmas_usb), GFP_KERNEL);
 if (!palmas_usb)
  return -ENOMEM;

 if (node && !pdata) {
  palmas_usb->wakeup = of_property_read_bool(node, "ti,wakeup");
  palmas_usb->enable_id_detection = of_property_read_bool(node,
      "ti,enable-id-detection");
  palmas_usb->enable_vbus_detection = of_property_read_bool(node,
      "ti,enable-vbus-detection");
 } else {
  palmas_usb->wakeup = 1;
  palmas_usb->enable_id_detection = 1;
  palmas_usb->enable_vbus_detection = 1;

  if (pdata)
   palmas_usb->wakeup = pdata->wakeup;
 }

 palmas_usb->id_gpiod = devm_gpiod_get_optional(&pdev->dev, "id",
       GPIOD_IN);
 if (IS_ERR(palmas_usb->id_gpiod)) {
  dev_err(&pdev->dev, "failed to get id gpio\n");
  return PTR_ERR(palmas_usb->id_gpiod);
 }

 palmas_usb->vbus_gpiod = devm_gpiod_get_optional(&pdev->dev, "vbus",
       GPIOD_IN);
 if (IS_ERR(palmas_usb->vbus_gpiod)) {
  dev_err(&pdev->dev, "failed to get vbus gpio\n");
  return PTR_ERR(palmas_usb->vbus_gpiod);
 }

 if (palmas_usb->enable_id_detection && palmas_usb->id_gpiod) {
  palmas_usb->enable_id_detection = 0;
  palmas_usb->enable_gpio_id_detection = 1;
 }

 if (palmas_usb->enable_vbus_detection && palmas_usb->vbus_gpiod) {
  palmas_usb->enable_vbus_detection = 0;
  palmas_usb->enable_gpio_vbus_detection = 1;
 }

 if (palmas_usb->enable_gpio_id_detection) {
  u32 debounce;

  if (of_property_read_u32(node, "debounce-delay-ms", &debounce))
   debounce = USB_GPIO_DEBOUNCE_MS;

  status = gpiod_set_debounce(palmas_usb->id_gpiod,
         debounce * 1000);
  if (status < 0)
   palmas_usb->sw_debounce_jiffies = msecs_to_jiffies(debounce);
 }

 INIT_DELAYED_WORK(&palmas_usb->wq_detectid, palmas_gpio_id_detect);

 palmas->usb = palmas_usb;
 palmas_usb->palmas = palmas;

 palmas_usb->dev = &pdev->dev;

 palmas_usb_wakeup(palmas, palmas_usb->wakeup);

 platform_set_drvdata(pdev, palmas_usb);

 palmas_usb->edev = devm_extcon_dev_allocate(&pdev->dev,
          palmas_extcon_cable);
 if (IS_ERR(palmas_usb->edev)) {
  dev_err(&pdev->dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 status = devm_extcon_dev_register(&pdev->dev, palmas_usb->edev);
 if (status) {
  dev_err(&pdev->dev, "failed to register extcon device\n");
  return status;
 }

 if (palmas_usb->enable_id_detection) {
  palmas_usb->id_otg_irq = regmap_irq_get_virq(palmas->irq_data,
            PALMAS_ID_OTG_IRQ);
  palmas_usb->id_irq = regmap_irq_get_virq(palmas->irq_data,
        PALMAS_ID_IRQ);
  status = devm_request_threaded_irq(palmas_usb->dev,
    palmas_usb->id_irq,
    ((void*)0), palmas_id_irq_handler,
    IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
    IRQF_ONESHOT,
    "palmas_usb_id", palmas_usb);
  if (status < 0) {
   dev_err(&pdev->dev, "can't get IRQ %d, err %d\n",
     palmas_usb->id_irq, status);
   return status;
  }
 } else if (palmas_usb->enable_gpio_id_detection) {
  palmas_usb->gpio_id_irq = gpiod_to_irq(palmas_usb->id_gpiod);
  if (palmas_usb->gpio_id_irq < 0) {
   dev_err(&pdev->dev, "failed to get id irq\n");
   return palmas_usb->gpio_id_irq;
  }
  status = devm_request_threaded_irq(&pdev->dev,
         palmas_usb->gpio_id_irq,
         ((void*)0),
         palmas_gpio_id_irq_handler,
         IRQF_TRIGGER_RISING |
         IRQF_TRIGGER_FALLING |
         IRQF_ONESHOT,
         "palmas_usb_id",
         palmas_usb);
  if (status < 0) {
   dev_err(&pdev->dev,
    "failed to request handler for id irq\n");
   return status;
  }
 }

 if (palmas_usb->enable_vbus_detection) {
  palmas_usb->vbus_otg_irq = regmap_irq_get_virq(palmas->irq_data,
             PALMAS_VBUS_OTG_IRQ);
  palmas_usb->vbus_irq = regmap_irq_get_virq(palmas->irq_data,
          PALMAS_VBUS_IRQ);
  status = devm_request_threaded_irq(palmas_usb->dev,
    palmas_usb->vbus_irq, ((void*)0),
    palmas_vbus_irq_handler,
    IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
    IRQF_ONESHOT,
    "palmas_usb_vbus", palmas_usb);
  if (status < 0) {
   dev_err(&pdev->dev, "can't get IRQ %d, err %d\n",
     palmas_usb->vbus_irq, status);
   return status;
  }
 } else if (palmas_usb->enable_gpio_vbus_detection) {

  status = palmas_update_bits(palmas,
   PALMAS_PU_PD_OD_BASE,
   PALMAS_PRIMARY_SECONDARY_PAD1,
   PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK,
   (1 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT));
  if (status < 0) {
   dev_err(&pdev->dev, "can't remux GPIO1\n");
   return status;
  }

  palmas_usb->vbus_otg_irq = regmap_irq_get_virq(palmas->irq_data,
             PALMAS_VBUS_OTG_IRQ);
  palmas_usb->gpio_vbus_irq = gpiod_to_irq(palmas_usb->vbus_gpiod);
  if (palmas_usb->gpio_vbus_irq < 0) {
   dev_err(&pdev->dev, "failed to get vbus irq\n");
   return palmas_usb->gpio_vbus_irq;
  }
  status = devm_request_threaded_irq(&pdev->dev,
      palmas_usb->gpio_vbus_irq,
      ((void*)0),
      palmas_vbus_irq_handler,
      IRQF_TRIGGER_FALLING |
      IRQF_TRIGGER_RISING |
      IRQF_ONESHOT,
      "palmas_usb_vbus",
      palmas_usb);
  if (status < 0) {
   dev_err(&pdev->dev,
    "failed to request handler for vbus irq\n");
   return status;
  }
 }

 palmas_enable_irq(palmas_usb);

 if (palmas_usb->enable_gpio_vbus_detection)
  palmas_vbus_irq_handler(palmas_usb->gpio_vbus_irq, palmas_usb);
 palmas_gpio_id_detect(&palmas_usb->wq_detectid.work);
 device_set_wakeup_capable(&pdev->dev, 1);
 return 0;
}
