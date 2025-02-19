
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_kms {int in_irq; int irq_list; } ;
struct mdp_irq {int registered; int node; } ;


 int list_add (int *,int *) ;
 int list_lock ;
 int mdp_irq_update (struct mdp_kms*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mdp_irq_register(struct mdp_kms *mdp_kms, struct mdp_irq *irq)
{
 unsigned long flags;
 bool needs_update = 0;

 spin_lock_irqsave(&list_lock, flags);

 if (!irq->registered) {
  irq->registered = 1;
  list_add(&irq->node, &mdp_kms->irq_list);
  needs_update = !mdp_kms->in_irq;
 }

 spin_unlock_irqrestore(&list_lock, flags);

 if (needs_update)
  mdp_irq_update(mdp_kms);
}
