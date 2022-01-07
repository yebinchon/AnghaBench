
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int ib_dev; } ;
struct notifier_block {int dummy; } ;
struct net_device {unsigned long name; unsigned long mtu; } ;
 int NOTIFY_OK ;
 int ib_device_put (int *) ;
 int ib_unregister_device_queued (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int pr_info (char*,unsigned long,unsigned long) ;
 struct rxe_dev* rxe_get_dev_from_net (struct net_device*) ;
 int rxe_port_down (struct rxe_dev*) ;
 int rxe_port_up (struct rxe_dev*) ;
 int rxe_set_mtu (struct rxe_dev*,unsigned long) ;
 int rxe_set_port_state (struct rxe_dev*) ;

__attribute__((used)) static int rxe_notify(struct notifier_block *not_blk,
        unsigned long event,
        void *arg)
{
 struct net_device *ndev = netdev_notifier_info_to_dev(arg);
 struct rxe_dev *rxe = rxe_get_dev_from_net(ndev);

 if (!rxe)
  return NOTIFY_OK;

 switch (event) {
 case 129:
  ib_unregister_device_queued(&rxe->ib_dev);
  break;
 case 128:
  rxe_port_up(rxe);
  break;
 case 133:
  rxe_port_down(rxe);
  break;
 case 135:
  pr_info("%s changed mtu to %d\n", ndev->name, ndev->mtu);
  rxe_set_mtu(rxe, ndev->mtu);
  break;
 case 137:
  rxe_set_port_state(rxe);
  break;
 case 130:
 case 131:
 case 136:
 case 134:
 case 132:
 default:
  pr_info("ignoring netdev event = %ld for %s\n",
   event, ndev->name);
  break;
 }

 ib_device_put(&rxe->ib_dev);
 return NOTIFY_OK;
}
