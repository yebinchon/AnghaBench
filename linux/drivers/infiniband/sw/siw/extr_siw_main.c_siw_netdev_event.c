
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int base_dev; int state; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dev; } ;
struct ib_device {int dummy; } ;


 int IB_EVENT_LID_CHANGE ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 int NOTIFY_OK ;
 int RDMA_DRIVER_SIW ;
 int dev_dbg (int *,char*,unsigned long) ;
 int * dev_net (struct net_device*) ;
 struct ib_device* ib_device_get_by_netdev (struct net_device*,int ) ;
 int ib_device_put (int *) ;
 int ib_unregister_device_queued (int *) ;
 int init_net ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int siw_dbg (struct ib_device*,char*) ;
 int siw_device_goes_down (struct siw_device*) ;
 int siw_port_event (struct siw_device*,int,int ) ;
 struct siw_device* to_siw_dev (struct ib_device*) ;

__attribute__((used)) static int siw_netdev_event(struct notifier_block *nb, unsigned long event,
       void *arg)
{
 struct net_device *netdev = netdev_notifier_info_to_dev(arg);
 struct ib_device *base_dev;
 struct siw_device *sdev;

 dev_dbg(&netdev->dev, "siw: event %lu\n", event);

 if (dev_net(netdev) != &init_net)
  return NOTIFY_OK;

 base_dev = ib_device_get_by_netdev(netdev, RDMA_DRIVER_SIW);
 if (!base_dev)
  return NOTIFY_OK;

 sdev = to_siw_dev(base_dev);

 switch (event) {
 case 128:
  sdev->state = IB_PORT_ACTIVE;
  siw_port_event(sdev, 1, IB_EVENT_PORT_ACTIVE);
  break;

 case 131:
  siw_device_goes_down(sdev);
  break;

 case 132:
  sdev->state = IB_PORT_DOWN;
  siw_port_event(sdev, 1, IB_EVENT_PORT_ERR);
  break;

 case 130:





  siw_dbg(base_dev, "unexpected NETDEV_REGISTER event\n");
  break;

 case 129:
  ib_unregister_device_queued(&sdev->base_dev);
  break;

 case 134:
  siw_port_event(sdev, 1, IB_EVENT_LID_CHANGE);
  break;



 case 133:
 case 135:
  break;

 default:
  break;
 }
 ib_device_put(&sdev->base_dev);

 return NOTIFY_OK;
}
