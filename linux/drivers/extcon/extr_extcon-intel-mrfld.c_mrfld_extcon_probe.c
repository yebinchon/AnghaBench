
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct mrfld_extcon_data {unsigned int id; int edev; struct regmap* regmap; struct device* dev; } ;
struct intel_soc_pmic {struct regmap* regmap; } ;


 int BCOVE_CHGRIRQ_ALL ;
 int BCOVE_ID ;
 int BCOVE_LVL1_CHGR ;
 int BCOVE_MCHGRIRQ1 ;
 int BCOVE_MIRQLVL1 ;
 int BCOVE_USBIDCTRL ;
 int BCOVE_USBIDCTRL_ALL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,int ) ;
 struct mrfld_extcon_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct mrfld_extcon_data*) ;
 int mrfld_extcon_cable ;
 int mrfld_extcon_clear (struct mrfld_extcon_data*,int ,int ) ;
 int mrfld_extcon_interrupt ;
 int mrfld_extcon_role_detect (struct mrfld_extcon_data*) ;
 int mrfld_extcon_set (struct mrfld_extcon_data*,int ,int ) ;
 int mrfld_extcon_sw_control (struct mrfld_extcon_data*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mrfld_extcon_data*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mrfld_extcon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct intel_soc_pmic *pmic = dev_get_drvdata(dev->parent);
 struct regmap *regmap = pmic->regmap;
 struct mrfld_extcon_data *data;
 unsigned int id;
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->dev = dev;
 data->regmap = regmap;

 data->edev = devm_extcon_dev_allocate(dev, mrfld_extcon_cable);
 if (IS_ERR(data->edev))
  return -ENOMEM;

 ret = devm_extcon_dev_register(dev, data->edev);
 if (ret < 0) {
  dev_err(dev, "can't register extcon device: %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(dev, irq, ((void*)0), mrfld_extcon_interrupt,
     IRQF_ONESHOT | IRQF_SHARED, pdev->name,
     data);
 if (ret) {
  dev_err(dev, "can't register IRQ handler: %d\n", ret);
  return ret;
 }

 ret = regmap_read(regmap, BCOVE_ID, &id);
 if (ret) {
  dev_err(dev, "can't read PMIC ID: %d\n", ret);
  return ret;
 }

 data->id = id;

 ret = mrfld_extcon_sw_control(data, 1);
 if (ret)
  return ret;


 mrfld_extcon_role_detect(data);

 mrfld_extcon_clear(data, BCOVE_MIRQLVL1, BCOVE_LVL1_CHGR);
 mrfld_extcon_clear(data, BCOVE_MCHGRIRQ1, BCOVE_CHGRIRQ_ALL);

 mrfld_extcon_set(data, BCOVE_USBIDCTRL, BCOVE_USBIDCTRL_ALL);

 platform_set_drvdata(pdev, data);

 return 0;
}
