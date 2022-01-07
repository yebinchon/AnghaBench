
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783_pwrb {int flags; int pwr; int * keymap; int mc13783; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MC13783_IRQSENSE1_ONOFD1S ;
 int MC13783_IRQSENSE1_ONOFD2S ;
 int MC13783_IRQSENSE1_ONOFD3S ;



 int MC13783_PWRB_B1_POL_INVERT ;
 int MC13783_PWRB_B2_POL_INVERT ;
 int MC13783_PWRB_B3_POL_INVERT ;
 int MC13783_REG_INTERRUPT_SENSE_1 ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int mc13xxx_irq_ack (int ,int) ;
 int mc13xxx_reg_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t button_irq(int irq, void *_priv)
{
 struct mc13783_pwrb *priv = _priv;
 int val;

 mc13xxx_irq_ack(priv->mc13783, irq);
 mc13xxx_reg_read(priv->mc13783, MC13783_REG_INTERRUPT_SENSE_1, &val);

 switch (irq) {
 case 130:
  val = val & MC13783_IRQSENSE1_ONOFD1S ? 1 : 0;
  if (priv->flags & MC13783_PWRB_B1_POL_INVERT)
   val ^= 1;
  input_report_key(priv->pwr, priv->keymap[0], val);
  break;

 case 129:
  val = val & MC13783_IRQSENSE1_ONOFD2S ? 1 : 0;
  if (priv->flags & MC13783_PWRB_B2_POL_INVERT)
   val ^= 1;
  input_report_key(priv->pwr, priv->keymap[1], val);
  break;

 case 128:
  val = val & MC13783_IRQSENSE1_ONOFD3S ? 1 : 0;
  if (priv->flags & MC13783_PWRB_B3_POL_INVERT)
   val ^= 1;
  input_report_key(priv->pwr, priv->keymap[2], val);
  break;
 }

 input_sync(priv->pwr);

 return IRQ_HANDLED;
}
