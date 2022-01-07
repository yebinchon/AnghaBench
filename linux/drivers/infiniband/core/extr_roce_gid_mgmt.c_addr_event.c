
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* ndev; } ;
struct update_gid_event_work {int gid_op; int work; TYPE_1__ gid_attr; int gid; } ;
struct sockaddr {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;
typedef enum gid_op_type { ____Placeholder_gid_op_type } gid_op_type ;


 scalar_t__ ARPHRD_ETHER ;
 int GFP_ATOMIC ;
 int GID_ADD ;
 int GID_DEL ;
 int INIT_WORK (int *,int ) ;


 int NOTIFY_DONE ;
 int dev_hold (struct net_device*) ;
 int gid_cache_wq ;
 struct update_gid_event_work* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int queue_work (int ,int *) ;
 int rdma_ip2gid (struct sockaddr*,int *) ;
 int update_gid_event_work_handler ;

__attribute__((used)) static int addr_event(struct notifier_block *this, unsigned long event,
        struct sockaddr *sa, struct net_device *ndev)
{
 struct update_gid_event_work *work;
 enum gid_op_type gid_op;

 if (ndev->type != ARPHRD_ETHER)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  gid_op = GID_ADD;
  break;

 case 129:
  gid_op = GID_DEL;
  break;

 default:
  return NOTIFY_DONE;
 }

 work = kmalloc(sizeof(*work), GFP_ATOMIC);
 if (!work)
  return NOTIFY_DONE;

 INIT_WORK(&work->work, update_gid_event_work_handler);

 rdma_ip2gid(sa, &work->gid);
 work->gid_op = gid_op;

 memset(&work->gid_attr, 0, sizeof(work->gid_attr));
 dev_hold(ndev);
 work->gid_attr.ndev = ndev;

 queue_work(gid_cache_wq, &work->work);

 return NOTIFY_DONE;
}
