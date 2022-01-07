
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mtk_pmic_keys_info {int keycode; TYPE_1__* keys; TYPE_2__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int deb_mask; int deb_reg; } ;
struct TYPE_3__ {int dev; int input_dev; int regmap; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,char*,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t mtk_pmic_keys_irq_handler_thread(int irq, void *data)
{
 struct mtk_pmic_keys_info *info = data;
 u32 key_deb, pressed;

 regmap_read(info->keys->regmap, info->regs->deb_reg, &key_deb);

 key_deb &= info->regs->deb_mask;

 pressed = !key_deb;

 input_report_key(info->keys->input_dev, info->keycode, pressed);
 input_sync(info->keys->input_dev);

 dev_dbg(info->keys->dev, "(%s) key =%d using PMIC\n",
   pressed ? "pressed" : "released", info->keycode);

 return IRQ_HANDLED;
}
