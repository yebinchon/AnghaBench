
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct i40iw_device {scalar_t__ init_state; int iw_status; TYPE_1__* ldev; scalar_t__ closing; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct TYPE_2__ {struct net_device* netdev; } ;




 int NOTIFY_DONE ;
 scalar_t__ RDMA_DEV_REGISTERED ;
 struct i40iw_handler* i40iw_find_netdev (struct net_device*) ;
 int i40iw_port_ibevent (struct i40iw_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

int i40iw_netdevice_event(struct notifier_block *notifier,
     unsigned long event,
     void *ptr)
{
 struct net_device *event_netdev;
 struct net_device *netdev;
 struct i40iw_device *iwdev;
 struct i40iw_handler *hdl;

 event_netdev = netdev_notifier_info_to_dev(ptr);

 hdl = i40iw_find_netdev(event_netdev);
 if (!hdl)
  return NOTIFY_DONE;

 iwdev = &hdl->device;
 if (iwdev->init_state < RDMA_DEV_REGISTERED || iwdev->closing)
  return NOTIFY_DONE;

 netdev = iwdev->ldev->netdev;
 if (netdev != event_netdev)
  return NOTIFY_DONE;

 iwdev->iw_status = 1;

 switch (event) {
 case 129:
  iwdev->iw_status = 0;

 case 128:
  i40iw_port_ibevent(iwdev);
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}
