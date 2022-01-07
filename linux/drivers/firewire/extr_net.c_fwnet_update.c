
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnet_peer {int generation; TYPE_1__* dev; int node_id; } ;
struct fw_unit {int device; } ;
struct fw_device {int generation; int node_id; } ;
struct TYPE_2__ {int lock; } ;


 struct fwnet_peer* dev_get_drvdata (int *) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void fwnet_update(struct fw_unit *unit)
{
 struct fw_device *device = fw_parent_device(unit);
 struct fwnet_peer *peer = dev_get_drvdata(&unit->device);
 int generation;

 generation = device->generation;

 spin_lock_irq(&peer->dev->lock);
 peer->node_id = device->node_id;
 peer->generation = generation;
 spin_unlock_irq(&peer->dev->lock);
}
