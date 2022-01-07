
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envelope {int comp; int comp_lock; int comp_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t envelope_detector_comp_isr(int irq, void *ctx)
{
 struct envelope *env = ctx;

 spin_lock(&env->comp_lock);
 env->comp = 1;
 disable_irq_nosync(env->comp_irq);
 spin_unlock(&env->comp_lock);

 return IRQ_HANDLED;
}
