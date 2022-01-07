
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_re_dev {int ibdev; int list; int * netdev; } ;


 int bnxt_re_dev_lock ;
 int dev_put (int *) ;
 int ib_dealloc_device (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void bnxt_re_dev_remove(struct bnxt_re_dev *rdev)
{
 dev_put(rdev->netdev);
 rdev->netdev = ((void*)0);

 mutex_lock(&bnxt_re_dev_lock);
 list_del_rcu(&rdev->list);
 mutex_unlock(&bnxt_re_dev_lock);

 synchronize_rcu();

 ib_dealloc_device(&rdev->ibdev);

}
