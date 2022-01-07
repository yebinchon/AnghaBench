
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decon_context {int dummy; } ;
typedef int irqreturn_t ;


 int DECON_TRIGCON ;
 int IRQ_HANDLED ;
 int TRIGCON_SWTRIGCMD ;
 int decon_set_bits (struct decon_context*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t decon_te_irq_handler(int irq, void *dev_id)
{
 struct decon_context *ctx = dev_id;

 decon_set_bits(ctx, DECON_TRIGCON, TRIGCON_SWTRIGCMD, ~0);

 return IRQ_HANDLED;
}
