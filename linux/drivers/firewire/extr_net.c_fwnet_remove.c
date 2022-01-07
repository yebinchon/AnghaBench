
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fwnet_peer {struct fwnet_device* dev; } ;
struct fwnet_device {int dev_link; scalar_t__ queued_datagrams; int peer_list; struct net_device* netdev; } ;
struct fw_unit {int device; } ;


 int WARN_ON (scalar_t__) ;
 struct fwnet_peer* dev_get_drvdata (int *) ;
 int free_netdev (struct net_device*) ;
 int fwnet_device_mutex ;
 int fwnet_fifo_stop (struct fwnet_device*) ;
 int fwnet_remove_peer (struct fwnet_peer*,struct fwnet_device*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ssleep (int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void fwnet_remove(struct fw_unit *unit)
{
 struct fwnet_peer *peer = dev_get_drvdata(&unit->device);
 struct fwnet_device *dev = peer->dev;
 struct net_device *net;
 int i;

 mutex_lock(&fwnet_device_mutex);

 net = dev->netdev;

 fwnet_remove_peer(peer, dev);

 if (list_empty(&dev->peer_list)) {
  unregister_netdev(net);

  fwnet_fifo_stop(dev);

  for (i = 0; dev->queued_datagrams && i < 5; i++)
   ssleep(1);
  WARN_ON(dev->queued_datagrams);
  list_del(&dev->dev_link);

  free_netdev(net);
 }

 mutex_unlock(&fwnet_device_mutex);
}
