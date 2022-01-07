
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct intel_soc_pmic {int regmap; } ;
struct cht_wc_extcon_data {TYPE_1__* dev; int regmap; int edev; int previous_cable; } ;


 int CHT_WC_PWRSRC_IRQ_MASK ;
 unsigned long CHT_WC_PWRSRC_USBID_MASK ;
 unsigned long CHT_WC_PWRSRC_VBUS ;
 int ENOMEM ;
 int EXTCON_NONE ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int MUX_SEL_PMIC ;
 int PTR_ERR (int ) ;
 int cht_wc_extcon_cables ;
 int cht_wc_extcon_enable_charging (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_isr ;
 int cht_wc_extcon_pwrsrc_event (struct cht_wc_extcon_data*) ;
 int cht_wc_extcon_set_5v_boost (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_set_phymux (struct cht_wc_extcon_data*,int ) ;
 int cht_wc_extcon_sw_control (struct cht_wc_extcon_data*,int) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int devm_extcon_dev_allocate (TYPE_1__*,int ) ;
 int devm_extcon_dev_register (TYPE_1__*,int ) ;
 struct cht_wc_extcon_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,int ,struct cht_wc_extcon_data*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cht_wc_extcon_data*) ;
 int regmap_write (int ,int ,unsigned long) ;

__attribute__((used)) static int cht_wc_extcon_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);
 struct cht_wc_extcon_data *ext;
 unsigned long mask = ~(CHT_WC_PWRSRC_VBUS | CHT_WC_PWRSRC_USBID_MASK);
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ext = devm_kzalloc(&pdev->dev, sizeof(*ext), GFP_KERNEL);
 if (!ext)
  return -ENOMEM;

 ext->dev = &pdev->dev;
 ext->regmap = pmic->regmap;
 ext->previous_cable = EXTCON_NONE;


 ext->edev = devm_extcon_dev_allocate(ext->dev, cht_wc_extcon_cables);
 if (IS_ERR(ext->edev))
  return PTR_ERR(ext->edev);
 cht_wc_extcon_set_5v_boost(ext, 0);


 ret = cht_wc_extcon_sw_control(ext, 1);
 if (ret)
  goto disable_sw_control;


 cht_wc_extcon_enable_charging(ext, 0);


 ret = devm_extcon_dev_register(ext->dev, ext->edev);
 if (ret) {
  dev_err(ext->dev, "Error registering extcon device: %d\n", ret);
  goto disable_sw_control;
 }


 cht_wc_extcon_set_phymux(ext, MUX_SEL_PMIC);


 cht_wc_extcon_pwrsrc_event(ext);

 ret = devm_request_threaded_irq(ext->dev, irq, ((void*)0), cht_wc_extcon_isr,
     IRQF_ONESHOT, pdev->name, ext);
 if (ret) {
  dev_err(ext->dev, "Error requesting interrupt: %d\n", ret);
  goto disable_sw_control;
 }


 ret = regmap_write(ext->regmap, CHT_WC_PWRSRC_IRQ_MASK, mask);
 if (ret) {
  dev_err(ext->dev, "Error writing irq-mask: %d\n", ret);
  goto disable_sw_control;
 }

 platform_set_drvdata(pdev, ext);

 return 0;

disable_sw_control:
 cht_wc_extcon_sw_control(ext, 0);
 return ret;
}
