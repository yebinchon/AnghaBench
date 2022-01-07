
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sbp2_pointer {int low; scalar_t__ high; } ;
struct sbp2_orb {int t; int kref; int link; struct sbp2_logical_unit* lu; int request_bus; } ;
struct sbp2_logical_unit {TYPE_1__* tgt; int orb_list; } ;
struct fw_device {int max_speed; int card; } ;
struct TYPE_2__ {int lock; } ;


 int TCODE_WRITE_BLOCK_REQUEST ;
 int complete_transaction ;
 int cpu_to_be32 (int ) ;
 int fw_send_request (int ,int *,int ,int,int,int ,int ,struct sbp2_pointer*,int,int ,struct sbp2_orb*) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fw_device* target_parent_device (TYPE_1__*) ;

__attribute__((used)) static void sbp2_send_orb(struct sbp2_orb *orb, struct sbp2_logical_unit *lu,
     int node_id, int generation, u64 offset)
{
 struct fw_device *device = target_parent_device(lu->tgt);
 struct sbp2_pointer orb_pointer;
 unsigned long flags;

 orb_pointer.high = 0;
 orb_pointer.low = cpu_to_be32(orb->request_bus);

 orb->lu = lu;
 spin_lock_irqsave(&lu->tgt->lock, flags);
 list_add_tail(&orb->link, &lu->orb_list);
 spin_unlock_irqrestore(&lu->tgt->lock, flags);

 kref_get(&orb->kref);
 kref_get(&orb->kref);

 fw_send_request(device->card, &orb->t, TCODE_WRITE_BLOCK_REQUEST,
   node_id, generation, device->max_speed, offset,
   &orb_pointer, 8, complete_transaction, orb);
}
