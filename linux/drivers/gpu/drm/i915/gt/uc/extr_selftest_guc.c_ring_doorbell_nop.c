
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int use_nop_wqi; int doorbell_id; int wq_lock; } ;
struct guc_process_desc {scalar_t__ wq_status; int tail; int head; } ;


 int EIO ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ WQ_STATUS_ACTIVE ;
 struct guc_process_desc* __get_process_desc (struct intel_guc_client*) ;
 int guc_ring_doorbell (struct intel_guc_client*) ;
 int guc_wq_item_append (struct intel_guc_client*,int ,int ,int ,int ) ;
 int pr_err (char*,int ,...) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for (int,int) ;

__attribute__((used)) static int ring_doorbell_nop(struct intel_guc_client *client)
{
 struct guc_process_desc *desc = __get_process_desc(client);
 int err;

 client->use_nop_wqi = 1;

 spin_lock_irq(&client->wq_lock);

 guc_wq_item_append(client, 0, 0, 0, 0);
 guc_ring_doorbell(client);

 spin_unlock_irq(&client->wq_lock);

 client->use_nop_wqi = 0;




 err = wait_for(READ_ONCE(desc->head) == READ_ONCE(desc->tail), 10);
 if (err) {
  pr_err("doorbell %u ring failed!\n", client->doorbell_id);
  return -EIO;
 }

 if (desc->wq_status != WQ_STATUS_ACTIVE) {
  pr_err("doorbell %u ring put WQ in bad state (%u)!\n",
         client->doorbell_id, desc->wq_status);
  return -EIO;
 }

 return 0;
}
