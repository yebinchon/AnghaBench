
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vibra_info {int dev; struct twl6040* twl6040; } ;
struct twl6040 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TWL6040_REG_STATUS ;
 int TWL6040_REG_VIBCTLL ;
 int TWL6040_REG_VIBCTLR ;
 int TWL6040_VIBENA ;
 int TWL6040_VIBLOCDET ;
 int TWL6040_VIBROCDET ;
 int dev_warn (int ,char*) ;
 int twl6040_clear_bits (struct twl6040*,int ,int ) ;
 int twl6040_reg_read (struct twl6040*,int ) ;

__attribute__((used)) static irqreturn_t twl6040_vib_irq_handler(int irq, void *data)
{
 struct vibra_info *info = data;
 struct twl6040 *twl6040 = info->twl6040;
 u8 status;

 status = twl6040_reg_read(twl6040, TWL6040_REG_STATUS);
 if (status & TWL6040_VIBLOCDET) {
  dev_warn(info->dev, "Left Vibrator overcurrent detected\n");
  twl6040_clear_bits(twl6040, TWL6040_REG_VIBCTLL,
       TWL6040_VIBENA);
 }
 if (status & TWL6040_VIBROCDET) {
  dev_warn(info->dev, "Right Vibrator overcurrent detected\n");
  twl6040_clear_bits(twl6040, TWL6040_REG_VIBCTLR,
       TWL6040_VIBENA);
 }

 return IRQ_HANDLED;
}
