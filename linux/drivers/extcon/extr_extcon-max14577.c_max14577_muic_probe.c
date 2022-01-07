
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max14577_muic_irq {int virq; int irq; int name; } ;
struct max14577_muic_info {int muic_irqs_num; int wq_detcable; TYPE_1__* dev; struct max14577* max14577; int path_uart; int status; int path_usb; int edev; struct max14577_muic_irq* muic_irqs; int irq_work; int mutex; } ;
struct max14577 {int dev_type; int regmap; int irq_data; } ;


 int ADC_DEBOUNCE_TIME_25MS ;
 void* ARRAY_SIZE (void*) ;
 int CTRL1_SW_UART ;
 int CTRL1_SW_USB ;
 int DELAY_MS_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_NO_SUSPEND ;
 scalar_t__ IS_ERR (int ) ;
 int MAX14577_CABLE_GROUP_ADC ;
 int MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF ;
 int MAX14577_MUIC_REG_STATUS1 ;
 int MAX14577_REG_DEVICEID ;


 int dev_err (TYPE_1__*,char*,...) ;
 struct max14577* dev_get_drvdata (int ) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int devm_extcon_dev_allocate (TYPE_1__*,int ) ;
 int devm_extcon_dev_register (TYPE_1__*,int ) ;
 struct max14577_muic_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,int ,struct max14577_muic_info*) ;
 int max14577_bulk_read (int ,int ,int ,int) ;
 int max14577_extcon_cable ;
 int max14577_muic_detect_cable_wq ;
 int max14577_muic_get_cable_type (struct max14577_muic_info*,int ,int*) ;
 int max14577_muic_irq_handler ;
 int max14577_muic_irq_work ;
 void* max14577_muic_irqs ;
 int max14577_muic_set_debounce_time (struct max14577_muic_info*,int ) ;
 int max14577_muic_set_path (struct max14577_muic_info*,int ,int) ;
 int max14577_read_reg (int ,int ,int *) ;
 void* max77836_muic_irqs ;
 int msecs_to_jiffies (int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct max14577_muic_info*) ;
 int queue_delayed_work (int ,int *,int) ;
 int regmap_irq_get_virq (int ,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int max14577_muic_probe(struct platform_device *pdev)
{
 struct max14577 *max14577 = dev_get_drvdata(pdev->dev.parent);
 struct max14577_muic_info *info;
 int delay_jiffies;
 int cable_type;
 bool attached;
 int ret;
 int i;
 u8 id;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;
 info->max14577 = max14577;

 platform_set_drvdata(pdev, info);
 mutex_init(&info->mutex);

 INIT_WORK(&info->irq_work, max14577_muic_irq_work);

 switch (max14577->dev_type) {
 case 128:
  info->muic_irqs = max77836_muic_irqs;
  info->muic_irqs_num = ARRAY_SIZE(max77836_muic_irqs);
  break;
 case 129:
 default:
  info->muic_irqs = max14577_muic_irqs;
  info->muic_irqs_num = ARRAY_SIZE(max14577_muic_irqs);
 }


 for (i = 0; i < info->muic_irqs_num; i++) {
  struct max14577_muic_irq *muic_irq = &info->muic_irqs[i];
  int virq = 0;

  virq = regmap_irq_get_virq(max14577->irq_data, muic_irq->irq);
  if (virq <= 0)
   return -EINVAL;
  muic_irq->virq = virq;

  ret = devm_request_threaded_irq(&pdev->dev, virq, ((void*)0),
    max14577_muic_irq_handler,
    IRQF_NO_SUSPEND,
    muic_irq->name, info);
  if (ret) {
   dev_err(&pdev->dev,
    "failed: irq request (IRQ: %d, error :%d)\n",
    muic_irq->irq, ret);
   return ret;
  }
 }


 info->edev = devm_extcon_dev_allocate(&pdev->dev,
           max14577_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(&pdev->dev, "failed to allocate memory for extcon\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(&pdev->dev, info->edev);
 if (ret) {
  dev_err(&pdev->dev, "failed to register extcon device\n");
  return ret;
 }


 info->path_usb = CTRL1_SW_USB;
 info->path_uart = CTRL1_SW_UART;
 delay_jiffies = msecs_to_jiffies(DELAY_MS_DEFAULT);


 ret = max14577_bulk_read(info->max14577->regmap,
   MAX14577_MUIC_REG_STATUS1, info->status, 2);
 if (ret) {
  dev_err(info->dev, "Cannot read STATUS registers\n");
  return ret;
 }
 cable_type = max14577_muic_get_cable_type(info, MAX14577_CABLE_GROUP_ADC,
      &attached);
 if (attached && cable_type == MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF)
  max14577_muic_set_path(info, info->path_uart, 1);


 ret = max14577_read_reg(info->max14577->regmap,
   MAX14577_REG_DEVICEID, &id);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to read revision number\n");
  return ret;
 }
 dev_info(info->dev, "device ID : 0x%x\n", id);


 max14577_muic_set_debounce_time(info, ADC_DEBOUNCE_TIME_25MS);
 INIT_DELAYED_WORK(&info->wq_detcable, max14577_muic_detect_cable_wq);
 queue_delayed_work(system_power_efficient_wq, &info->wq_detcable,
   delay_jiffies);

 return ret;
}
