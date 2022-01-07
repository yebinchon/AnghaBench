
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct bnxt_re_dev {int* cosq; int list; int mw_count; int mr_count; int srq_count; int cq_count; int qp_count; int qp_lock; int qp_list; struct bnxt_en_dev* en_dev; int id; struct net_device* netdev; } ;
struct bnxt_en_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int devfn; } ;


 int INIT_LIST_HEAD (int *) ;
 int ROCE_DRV_MODULE_NAME ;
 int atomic_set (int *,int ) ;
 int bnxt_re_dev ;
 int bnxt_re_dev_list ;
 int bnxt_re_dev_lock ;
 int dev_err (int *,char*,int ) ;
 int dev_hold (struct net_device*) ;
 struct bnxt_re_dev* ib_alloc_device (int ,int ) ;
 int ibdev ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct bnxt_re_dev *bnxt_re_dev_add(struct net_device *netdev,
        struct bnxt_en_dev *en_dev)
{
 struct bnxt_re_dev *rdev;


 rdev = ib_alloc_device(bnxt_re_dev, ibdev);
 if (!rdev) {
  dev_err(((void*)0), "%s: bnxt_re_dev allocation failure!",
   ROCE_DRV_MODULE_NAME);
  return ((void*)0);
 }

 rdev->netdev = netdev;
 dev_hold(rdev->netdev);
 rdev->en_dev = en_dev;
 rdev->id = rdev->en_dev->pdev->devfn;
 INIT_LIST_HEAD(&rdev->qp_list);
 mutex_init(&rdev->qp_lock);
 atomic_set(&rdev->qp_count, 0);
 atomic_set(&rdev->cq_count, 0);
 atomic_set(&rdev->srq_count, 0);
 atomic_set(&rdev->mr_count, 0);
 atomic_set(&rdev->mw_count, 0);
 rdev->cosq[0] = 0xFFFF;
 rdev->cosq[1] = 0xFFFF;

 mutex_lock(&bnxt_re_dev_lock);
 list_add_tail_rcu(&rdev->list, &bnxt_re_dev_list);
 mutex_unlock(&bnxt_re_dev_lock);
 return rdev;
}
