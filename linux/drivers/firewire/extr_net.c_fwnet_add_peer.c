
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fwnet_peer {int guid; int peer_link; int node_id; int generation; int speed; int max_payload; scalar_t__ datagram_label; scalar_t__ pdg_size; int pd_list; struct fwnet_device* dev; } ;
struct fwnet_device {int lock; int peer_count; int peer_list; } ;
struct fw_unit {int device; } ;
struct fw_device {int* config_rom; int node_id; int generation; int max_rec; int max_speed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (int *,struct fwnet_peer*) ;
 int fwnet_max_payload (int ,int ) ;
 struct fwnet_peer* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int set_carrier_state (struct fwnet_device*) ;
 int smp_rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int fwnet_add_peer(struct fwnet_device *dev,
     struct fw_unit *unit, struct fw_device *device)
{
 struct fwnet_peer *peer;

 peer = kmalloc(sizeof(*peer), GFP_KERNEL);
 if (!peer)
  return -ENOMEM;

 dev_set_drvdata(&unit->device, peer);

 peer->dev = dev;
 peer->guid = (u64)device->config_rom[3] << 32 | device->config_rom[4];
 INIT_LIST_HEAD(&peer->pd_list);
 peer->pdg_size = 0;
 peer->datagram_label = 0;
 peer->speed = device->max_speed;
 peer->max_payload = fwnet_max_payload(device->max_rec, peer->speed);

 peer->generation = device->generation;
 smp_rmb();
 peer->node_id = device->node_id;

 spin_lock_irq(&dev->lock);
 list_add_tail(&peer->peer_link, &dev->peer_list);
 dev->peer_count++;
 set_carrier_state(dev);
 spin_unlock_irq(&dev->lock);

 return 0;
}
