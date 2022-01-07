
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umem_odp {int umem_mutex; int notifier_completion; int notifiers_count; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;

__attribute__((used)) static void ib_umem_notifier_start_account(struct ib_umem_odp *umem_odp)
{
 mutex_lock(&umem_odp->umem_mutex);
 if (umem_odp->notifiers_count++ == 0)





  reinit_completion(&umem_odp->notifier_completion);
 mutex_unlock(&umem_odp->umem_mutex);
}
