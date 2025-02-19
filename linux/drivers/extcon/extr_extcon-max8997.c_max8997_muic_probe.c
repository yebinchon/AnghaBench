
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max8997_platform_data {struct max8997_muic_platform_data* muic_pdata; } ;
struct max8997_muic_platform_data {int num_init_data; scalar_t__ detcable_delay_ms; void* path_usb; void* path_uart; TYPE_1__* init_data; } ;
struct max8997_muic_irq {unsigned int virq; int irq; int name; } ;
struct max8997_muic_info {int wq_detcable; void* path_uart; TYPE_2__* dev; int status; int muic; void* path_usb; int edev; int irq_work; int mutex; } ;
struct max8997_dev {int irq_domain; int muic; int dev; } ;
struct TYPE_6__ {int data; int addr; } ;


 int ADC_DEBOUNCE_TIME_25MS ;
 int ARRAY_SIZE (struct max8997_muic_irq*) ;
 void* CONTROL1_SW_UART ;
 void* CONTROL1_SW_USB ;
 scalar_t__ DELAY_MS_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_NO_SUSPEND ;
 scalar_t__ IS_ERR (int ) ;
 int MAX8997_CABLE_GROUP_ADC ;
 int MAX8997_MUIC_ADC_FACTORY_MODE_UART_OFF ;
 int MAX8997_MUIC_REG_STATUS1 ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 struct max8997_platform_data* dev_get_platdata (int ) ;
 int devm_extcon_dev_allocate (TYPE_2__*,int ) ;
 int devm_extcon_dev_register (TYPE_2__*,int ) ;
 struct max8997_muic_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 int free_irq (unsigned int,struct max8997_muic_info*) ;
 unsigned int irq_create_mapping (int ,int ) ;
 int max8997_bulk_read (int ,int ,int,int ) ;
 int max8997_extcon_cable ;
 int max8997_muic_detect_cable_wq ;
 int max8997_muic_get_cable_type (struct max8997_muic_info*,int ,int*) ;
 int max8997_muic_irq_handler ;
 int max8997_muic_irq_work ;
 int max8997_muic_set_debounce_time (struct max8997_muic_info*,int ) ;
 int max8997_muic_set_path (struct max8997_muic_info*,void*,int) ;
 int max8997_write_reg (int ,int ,int ) ;
 int msecs_to_jiffies (scalar_t__) ;
 struct max8997_muic_irq* muic_irqs ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct max8997_muic_info*) ;
 int queue_delayed_work (int ,int *,int) ;
 int request_threaded_irq (unsigned int,int *,int ,int ,int ,struct max8997_muic_info*) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int max8997_muic_probe(struct platform_device *pdev)
{
 struct max8997_dev *max8997 = dev_get_drvdata(pdev->dev.parent);
 struct max8997_platform_data *pdata = dev_get_platdata(max8997->dev);
 struct max8997_muic_info *info;
 int delay_jiffies;
 int cable_type;
 bool attached;
 int ret, i;

 info = devm_kzalloc(&pdev->dev, sizeof(struct max8997_muic_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;
 info->muic = max8997->muic;

 platform_set_drvdata(pdev, info);
 mutex_init(&info->mutex);

 INIT_WORK(&info->irq_work, max8997_muic_irq_work);

 for (i = 0; i < ARRAY_SIZE(muic_irqs); i++) {
  struct max8997_muic_irq *muic_irq = &muic_irqs[i];
  unsigned int virq = 0;

  virq = irq_create_mapping(max8997->irq_domain, muic_irq->irq);
  if (!virq) {
   ret = -EINVAL;
   goto err_irq;
  }
  muic_irq->virq = virq;

  ret = request_threaded_irq(virq, ((void*)0),
    max8997_muic_irq_handler,
    IRQF_NO_SUSPEND,
    muic_irq->name, info);
  if (ret) {
   dev_err(&pdev->dev,
    "failed: irq request (IRQ: %d, error :%d)\n",
    muic_irq->irq, ret);
   goto err_irq;
  }
 }


 info->edev = devm_extcon_dev_allocate(&pdev->dev, max8997_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(&pdev->dev, "failed to allocate memory for extcon\n");
  ret = -ENOMEM;
  goto err_irq;
 }

 ret = devm_extcon_dev_register(&pdev->dev, info->edev);
 if (ret) {
  dev_err(&pdev->dev, "failed to register extcon device\n");
  goto err_irq;
 }

 if (pdata && pdata->muic_pdata) {
  struct max8997_muic_platform_data *muic_pdata
   = pdata->muic_pdata;


  for (i = 0; i < muic_pdata->num_init_data; i++) {
   max8997_write_reg(info->muic,
     muic_pdata->init_data[i].addr,
     muic_pdata->init_data[i].data);
  }





  if (muic_pdata->path_uart)
   info->path_uart = muic_pdata->path_uart;
  else
   info->path_uart = CONTROL1_SW_UART;

  if (muic_pdata->path_usb)
   info->path_usb = muic_pdata->path_usb;
  else
   info->path_usb = CONTROL1_SW_USB;





  if (muic_pdata->detcable_delay_ms)
   delay_jiffies =
    msecs_to_jiffies(muic_pdata->detcable_delay_ms);
  else
   delay_jiffies = msecs_to_jiffies(DELAY_MS_DEFAULT);
 } else {
  info->path_uart = CONTROL1_SW_UART;
  info->path_usb = CONTROL1_SW_USB;
  delay_jiffies = msecs_to_jiffies(DELAY_MS_DEFAULT);
 }


 ret = max8997_bulk_read(info->muic, MAX8997_MUIC_REG_STATUS1,
    2, info->status);
 if (ret) {
  dev_err(info->dev, "failed to read MUIC register\n");
  return ret;
 }
 cable_type = max8997_muic_get_cable_type(info,
        MAX8997_CABLE_GROUP_ADC, &attached);
 if (attached && cable_type == MAX8997_MUIC_ADC_FACTORY_MODE_UART_OFF)
  max8997_muic_set_path(info, info->path_uart, 1);


 max8997_muic_set_debounce_time(info, ADC_DEBOUNCE_TIME_25MS);
 INIT_DELAYED_WORK(&info->wq_detcable, max8997_muic_detect_cable_wq);
 queue_delayed_work(system_power_efficient_wq, &info->wq_detcable,
   delay_jiffies);

 return 0;

err_irq:
 while (--i >= 0)
  free_irq(muic_irqs[i].virq, info);
 return ret;
}
