
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umem_odp {scalar_t__ notifiers_count; int umem_mutex; int notifier_completion; int notifiers_seq; } ;


 int complete_all (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ib_umem_notifier_end_account(struct ib_umem_odp *umem_odp)
{
 mutex_lock(&umem_odp->umem_mutex);




 ++umem_odp->notifiers_seq;
 if (--umem_odp->notifiers_count == 0)
  complete_all(&umem_odp->notifier_completion);
 mutex_unlock(&umem_odp->umem_mutex);
}
