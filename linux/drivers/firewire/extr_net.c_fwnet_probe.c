
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fifo_lo; int fifo_hi; int sspd; int max_rec; int uniq_id; } ;
union fwnet_hwaddr {TYPE_2__ uc; } ;
struct net_device {unsigned int mtu; unsigned int max_mtu; int dev; int addr_len; int broadcast; scalar_t__ dev_addr; int min_mtu; } ;
struct ieee1394_device_id {int dummy; } ;
struct TYPE_3__ {int offset; } ;
struct fwnet_device {int local_fifo; int dev_link; struct fw_card* card; TYPE_1__ handler; struct net_device* netdev; int peer_list; scalar_t__ queued_datagrams; scalar_t__ broadcast_xmt_datagramlabel; scalar_t__ broadcast_xmt_max_payload; int * broadcast_rcv_context; int broadcast_state; int lock; } ;
struct fw_unit {int dummy; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {int device; int link_speed; int max_receive; int guid; } ;


 int ENOMEM ;
 int ETH_MIN_MTU ;
 int FWNET_BROADCAST_ERROR ;
 int FWNET_NO_FIFO_ADDR ;
 int INIT_LIST_HEAD (int *) ;
 int NET_NAME_UNKNOWN ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int dev_name (int ) ;
 int dev_notice (int *,char*,int ) ;
 int free_netdev (struct net_device*) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int fwnet_add_peer (struct fwnet_device*,struct fw_unit*,struct fw_device*) ;
 struct fwnet_device* fwnet_dev_find (struct fw_card*) ;
 int fwnet_device_list ;
 int fwnet_device_mutex ;
 int fwnet_fifo_start (struct fwnet_device*) ;
 int fwnet_fifo_stop (struct fwnet_device*) ;
 int fwnet_init_dev ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memset (int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int put_unaligned_be16 (int,int *) ;
 int put_unaligned_be32 (int,int *) ;
 int put_unaligned_be64 (int ,int *) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int fwnet_probe(struct fw_unit *unit,
         const struct ieee1394_device_id *id)
{
 struct fw_device *device = fw_parent_device(unit);
 struct fw_card *card = device->card;
 struct net_device *net;
 bool allocated_netdev = 0;
 struct fwnet_device *dev;
 int ret;
 union fwnet_hwaddr *ha;

 mutex_lock(&fwnet_device_mutex);

 dev = fwnet_dev_find(card);
 if (dev) {
  net = dev->netdev;
  goto have_dev;
 }

 net = alloc_netdev(sizeof(*dev), "firewire%d", NET_NAME_UNKNOWN,
      fwnet_init_dev);
 if (net == ((void*)0)) {
  mutex_unlock(&fwnet_device_mutex);
  return -ENOMEM;
 }

 allocated_netdev = 1;
 SET_NETDEV_DEV(net, card->device);
 dev = netdev_priv(net);

 spin_lock_init(&dev->lock);
 dev->broadcast_state = FWNET_BROADCAST_ERROR;
 dev->broadcast_rcv_context = ((void*)0);
 dev->broadcast_xmt_max_payload = 0;
 dev->broadcast_xmt_datagramlabel = 0;
 dev->local_fifo = FWNET_NO_FIFO_ADDR;
 dev->queued_datagrams = 0;
 INIT_LIST_HEAD(&dev->peer_list);
 dev->card = card;
 dev->netdev = net;

 ret = fwnet_fifo_start(dev);
 if (ret < 0)
  goto out;
 dev->local_fifo = dev->handler.offset;






 net->mtu = 1500U;
 net->min_mtu = ETH_MIN_MTU;
 net->max_mtu = 4096U;


 ha = (union fwnet_hwaddr *)net->dev_addr;
 put_unaligned_be64(card->guid, &ha->uc.uniq_id);
 ha->uc.max_rec = dev->card->max_receive;
 ha->uc.sspd = dev->card->link_speed;
 put_unaligned_be16(dev->local_fifo >> 32, &ha->uc.fifo_hi);
 put_unaligned_be32(dev->local_fifo & 0xffffffff, &ha->uc.fifo_lo);

 memset(net->broadcast, -1, net->addr_len);

 ret = register_netdev(net);
 if (ret)
  goto out;

 list_add_tail(&dev->dev_link, &fwnet_device_list);
 dev_notice(&net->dev, "IP over IEEE 1394 on card %s\n",
     dev_name(card->device));
 have_dev:
 ret = fwnet_add_peer(dev, unit, device);
 if (ret && allocated_netdev) {
  unregister_netdev(net);
  list_del(&dev->dev_link);
 out:
  fwnet_fifo_stop(dev);
  free_netdev(net);
 }

 mutex_unlock(&fwnet_device_mutex);

 return ret;
}
