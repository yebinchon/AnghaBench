
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int of_node; int parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct intel_soc_pmic {int regmap; } ;
struct i2c_board_info {char* type; int addr; char* dev_name; scalar_t__ irq; int * platform_data; int properties; } ;
struct TYPE_9__ {TYPE_6__* parent; } ;
struct TYPE_10__ {TYPE_1__ dev; int name; int * lock_ops; int * algo; int class; int owner; } ;
struct cht_wc_i2c_adap {int irq_domain; TYPE_2__ adapter; int client; scalar_t__ client_irq; int irqchip; int irq_mask; int regmap; int old_irq_mask; int irqchip_lock; int adap_lock; int wait; } ;


 int CHT_WC_EXTCHGRIRQ ;
 int CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK ;
 int CHT_WC_EXTCHGRIRQ_MSK ;
 int CHT_WC_I2C_RDDATA ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int IRQF_ONESHOT ;
 int THIS_MODULE ;
 scalar_t__ acpi_dev_present (char*,int *,int) ;
 int bq24190_pdata ;
 int bq24190_props ;
 int cht_wc_i2c_adap_algo ;
 int cht_wc_i2c_adap_lock_ops ;
 int cht_wc_i2c_adap_thread_handler ;
 int cht_wc_i2c_irq_chip ;
 int dev_err (TYPE_6__*,char*) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 struct cht_wc_i2c_adap* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_6__*,int,int *,int ,int ,char*,struct cht_wc_i2c_adap*) ;
 int handle_simple_irq ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_del_adapter (TYPE_2__*) ;
 int i2c_new_device (TYPE_2__*,struct i2c_board_info*) ;
 int i2c_set_adapdata (TYPE_2__*,struct cht_wc_i2c_adap*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ irq_create_mapping (int ,int ) ;
 int irq_domain_add_linear (int ,int,int *,int *) ;
 int irq_domain_remove (int ) ;
 int irq_domain_simple_ops ;
 int irq_set_chip_and_handler (scalar_t__,int *,int ) ;
 int irq_set_chip_data (scalar_t__,struct cht_wc_i2c_adap*) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cht_wc_i2c_adap*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int cht_wc_i2c_adap_i2c_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);
 struct cht_wc_i2c_adap *adap;
 struct i2c_board_info board_info = {
  .type = "bq24190",
  .addr = 0x6b,
  .dev_name = "bq24190",
  .properties = bq24190_props,
  .platform_data = &bq24190_pdata,
 };
 int ret, reg, irq;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "Error missing irq resource\n");
  return -EINVAL;
 }

 adap = devm_kzalloc(&pdev->dev, sizeof(*adap), GFP_KERNEL);
 if (!adap)
  return -ENOMEM;

 init_waitqueue_head(&adap->wait);
 mutex_init(&adap->adap_lock);
 mutex_init(&adap->irqchip_lock);
 adap->irqchip = cht_wc_i2c_irq_chip;
 adap->regmap = pmic->regmap;
 adap->adapter.owner = THIS_MODULE;
 adap->adapter.class = I2C_CLASS_HWMON;
 adap->adapter.algo = &cht_wc_i2c_adap_algo;
 adap->adapter.lock_ops = &cht_wc_i2c_adap_lock_ops;
 strlcpy(adap->adapter.name, "PMIC I2C Adapter",
  sizeof(adap->adapter.name));
 adap->adapter.dev.parent = &pdev->dev;


 adap->old_irq_mask = adap->irq_mask = ~CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK;

 ret = regmap_read(adap->regmap, CHT_WC_I2C_RDDATA, &reg);
 if (ret)
  return ret;

 ret = regmap_write(adap->regmap, CHT_WC_EXTCHGRIRQ, ~adap->irq_mask);
 if (ret)
  return ret;

 ret = regmap_write(adap->regmap, CHT_WC_EXTCHGRIRQ_MSK, adap->irq_mask);
 if (ret)
  return ret;


 adap->irq_domain = irq_domain_add_linear(pdev->dev.of_node, 1,
       &irq_domain_simple_ops, ((void*)0));
 if (!adap->irq_domain)
  return -ENOMEM;

 adap->client_irq = irq_create_mapping(adap->irq_domain, 0);
 if (!adap->client_irq) {
  ret = -ENOMEM;
  goto remove_irq_domain;
 }

 irq_set_chip_data(adap->client_irq, adap);
 irq_set_chip_and_handler(adap->client_irq, &adap->irqchip,
     handle_simple_irq);

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     cht_wc_i2c_adap_thread_handler,
     IRQF_ONESHOT, "PMIC I2C Adapter", adap);
 if (ret)
  goto remove_irq_domain;

 i2c_set_adapdata(&adap->adapter, adap);
 ret = i2c_add_adapter(&adap->adapter);
 if (ret)
  goto remove_irq_domain;
 if (acpi_dev_present("INT33FE", ((void*)0), -1)) {
  board_info.irq = adap->client_irq;
  adap->client = i2c_new_device(&adap->adapter, &board_info);
  if (!adap->client) {
   ret = -ENOMEM;
   goto del_adapter;
  }
 }

 platform_set_drvdata(pdev, adap);
 return 0;

del_adapter:
 i2c_del_adapter(&adap->adapter);
remove_irq_domain:
 irq_domain_remove(adap->irq_domain);
 return ret;
}
