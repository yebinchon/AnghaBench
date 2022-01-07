
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pmic_keys_info {int keycode; int irq; TYPE_1__* regs; struct mtk_pmic_keys* keys; } ;
struct mtk_pmic_keys {int input_dev; int dev; int regmap; } ;
struct TYPE_2__ {int intsel_mask; int intsel_reg; } ;


 int EV_KEY ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int dev_err (int ,char*,int ,int) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,int,char*,struct mtk_pmic_keys_info*) ;
 int input_set_capability (int ,int ,int ) ;
 int mtk_pmic_keys_irq_handler_thread ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int mtk_pmic_key_setup(struct mtk_pmic_keys *keys,
  struct mtk_pmic_keys_info *info)
{
 int ret;

 info->keys = keys;

 ret = regmap_update_bits(keys->regmap, info->regs->intsel_reg,
     info->regs->intsel_mask,
     info->regs->intsel_mask);
 if (ret < 0)
  return ret;

 ret = devm_request_threaded_irq(keys->dev, info->irq, ((void*)0),
     mtk_pmic_keys_irq_handler_thread,
     IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
     "mtk-pmic-keys", info);
 if (ret) {
  dev_err(keys->dev, "Failed to request IRQ: %d: %d\n",
   info->irq, ret);
  return ret;
 }

 input_set_capability(keys->input_dev, EV_KEY, info->keycode);

 return 0;
}
