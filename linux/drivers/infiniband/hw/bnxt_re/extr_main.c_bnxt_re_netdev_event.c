
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int name; } ;
struct bnxt_re_work {unsigned long event; int work; struct net_device* vlan_dev; struct bnxt_re_dev* rdev; } ;
struct bnxt_re_dev {int sched_count; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;


 int NOTIFY_DONE ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int bnxt_re_dev_reg (struct bnxt_re_dev**,struct net_device*) ;
 int bnxt_re_dev_unreg (struct bnxt_re_dev*) ;
 struct bnxt_re_dev* bnxt_re_from_netdev (struct net_device*) ;
 int bnxt_re_ib_unreg (struct bnxt_re_dev*) ;
 int bnxt_re_init_one (struct bnxt_re_dev*) ;
 int bnxt_re_remove_one (struct bnxt_re_dev*) ;
 int bnxt_re_task ;
 int bnxt_re_wq ;
 struct bnxt_re_work* kzalloc (int,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int pr_err (char*,int ,int) ;
 int queue_work (int ,int *) ;
 struct net_device* rdma_vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static int bnxt_re_netdev_event(struct notifier_block *notifier,
    unsigned long event, void *ptr)
{
 struct net_device *real_dev, *netdev = netdev_notifier_info_to_dev(ptr);
 struct bnxt_re_work *re_work;
 struct bnxt_re_dev *rdev;
 int rc = 0;
 bool sch_work = 0;

 real_dev = rdma_vlan_dev_real_dev(netdev);
 if (!real_dev)
  real_dev = netdev;

 rdev = bnxt_re_from_netdev(real_dev);
 if (!rdev && event != 129)
  goto exit;
 if (real_dev != netdev)
  goto exit;

 switch (event) {
 case 129:
  if (rdev)
   break;
  rc = bnxt_re_dev_reg(&rdev, real_dev);
  if (rc == -ENODEV)
   break;
  if (rc) {
   pr_err("Failed to register with the device %s: %#x\n",
          real_dev->name, rc);
   break;
  }
  bnxt_re_init_one(rdev);
  sch_work = 1;
  break;

 case 128:



  if (atomic_read(&rdev->sched_count) > 0)
   goto exit;
  bnxt_re_ib_unreg(rdev);
  bnxt_re_remove_one(rdev);
  bnxt_re_dev_unreg(rdev);
  break;

 default:
  sch_work = 1;
  break;
 }
 if (sch_work) {

  re_work = kzalloc(sizeof(*re_work), GFP_ATOMIC);
  if (re_work) {
   re_work->rdev = rdev;
   re_work->event = event;
   re_work->vlan_dev = (real_dev == netdev ?
          ((void*)0) : netdev);
   INIT_WORK(&re_work->work, bnxt_re_task);
   atomic_inc(&rdev->sched_count);
   queue_work(bnxt_re_wq, &re_work->work);
  }
 }

exit:
 return NOTIFY_DONE;
}
