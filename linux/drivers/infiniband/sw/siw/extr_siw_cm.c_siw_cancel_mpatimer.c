
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_cep {int lock; TYPE_1__* mpa_timer; } ;
struct TYPE_2__ {int work; } ;


 scalar_t__ cancel_delayed_work (int *) ;
 int kfree (TYPE_1__*) ;
 int siw_cep_put (struct siw_cep*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void siw_cancel_mpatimer(struct siw_cep *cep)
{
 spin_lock_bh(&cep->lock);
 if (cep->mpa_timer) {
  if (cancel_delayed_work(&cep->mpa_timer->work)) {
   siw_cep_put(cep);
   kfree(cep->mpa_timer);
  }
  cep->mpa_timer = ((void*)0);
 }
 spin_unlock_bh(&cep->lock);
}
