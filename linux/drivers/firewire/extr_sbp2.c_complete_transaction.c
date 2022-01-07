
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbp2_orb {int rcode; int kref; TYPE_2__* lu; int (* callback ) (struct sbp2_orb*,int *) ;int link; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tgt; } ;
struct TYPE_3__ {int lock; } ;


 int RCODE_COMPLETE ;
 int free_orb ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sbp2_orb*,int *) ;

__attribute__((used)) static void complete_transaction(struct fw_card *card, int rcode,
     void *payload, size_t length, void *data)
{
 struct sbp2_orb *orb = data;
 unsigned long flags;
 spin_lock_irqsave(&orb->lu->tgt->lock, flags);

 if (orb->rcode == -1)
  orb->rcode = rcode;
 if (orb->rcode != RCODE_COMPLETE) {
  list_del(&orb->link);
  spin_unlock_irqrestore(&orb->lu->tgt->lock, flags);

  orb->callback(orb, ((void*)0));
  kref_put(&orb->kref, free_orb);
 } else {
  spin_unlock_irqrestore(&orb->lu->tgt->lock, flags);
 }

 kref_put(&orb->kref, free_orb);
}
