
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct olpc_apsp {int dev; scalar_t__ base; struct serio* padio; struct serio* kbio; } ;
typedef int irqreturn_t ;


 scalar_t__ COMMAND_RETURN_STATUS ;
 unsigned int DATA_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ KEYBOARD_PORT ;
 scalar_t__ PJ_RST_INTERRUPT ;
 unsigned int PORT_MASK ;
 scalar_t__ PORT_SHIFT ;
 scalar_t__ SECURE_PROCESSOR_COMMAND ;
 unsigned int SP_COMMAND_COMPLETE_RESET ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_warn (int ,char*) ;
 int pm_wakeup_event (int ,int) ;
 unsigned int readl (scalar_t__) ;
 int serio_interrupt (struct serio*,unsigned int,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t olpc_apsp_rx(int irq, void *dev_id)
{
 struct olpc_apsp *priv = dev_id;
 unsigned int w, tmp;
 struct serio *serio;





 tmp = readl(priv->base + PJ_RST_INTERRUPT);
 if (!(tmp & SP_COMMAND_COMPLETE_RESET)) {
  dev_warn(priv->dev, "spurious interrupt?\n");
  return IRQ_NONE;
 }

 w = readl(priv->base + COMMAND_RETURN_STATUS);
 dev_dbg(priv->dev, "olpc_apsp_rx %x\n", w);

 if (w >> PORT_SHIFT == KEYBOARD_PORT)
  serio = priv->kbio;
 else
  serio = priv->padio;

 serio_interrupt(serio, w & DATA_MASK, 0);


 writel(tmp | SP_COMMAND_COMPLETE_RESET, priv->base + PJ_RST_INTERRUPT);
 writel(PORT_MASK, priv->base + SECURE_PROCESSOR_COMMAND);

 pm_wakeup_event(priv->dev, 1000);
 return IRQ_HANDLED;
}
