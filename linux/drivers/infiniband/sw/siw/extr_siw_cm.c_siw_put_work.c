
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_cm_work {TYPE_1__* cep; int list; } ;
struct TYPE_2__ {int lock; int work_freelist; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void siw_put_work(struct siw_cm_work *work)
{
 INIT_LIST_HEAD(&work->list);
 spin_lock_bh(&work->cep->lock);
 list_add(&work->list, &work->cep->work_freelist);
 spin_unlock_bh(&work->cep->lock);
}
