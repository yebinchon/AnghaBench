
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_node {int dummy; } ;
struct fw_card {int generation; int node_id; int bm_node_id; int bm_abdicate; int lock; struct fw_node* local_node; int color; int reset_jiffies; int broadcast_channel_auto_allocated; int broadcast_channel_allocated; scalar_t__ bm_retries; } ;


 struct fw_node* build_tree (struct fw_card*,int *,int) ;
 int for_each_fw_node (struct fw_card*,struct fw_node*,int ) ;
 int fw_destroy_nodes (struct fw_card*) ;
 int fw_err (struct fw_card*,char*) ;
 int fw_schedule_bm_work (struct fw_card*,int ) ;
 int get_jiffies_64 () ;
 int is_next_generation (int,int) ;
 int report_found_node ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_topology_map (struct fw_card*,int *,int) ;
 int update_tree (struct fw_card*,struct fw_node*) ;

void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
         int self_id_count, u32 *self_ids, bool bm_abdicate)
{
 struct fw_node *local_node;
 unsigned long flags;






 if (!is_next_generation(generation, card->generation) &&
     card->local_node != ((void*)0)) {
  fw_destroy_nodes(card);
  card->bm_retries = 0;
 }

 spin_lock_irqsave(&card->lock, flags);

 card->broadcast_channel_allocated = card->broadcast_channel_auto_allocated;
 card->node_id = node_id;




 smp_wmb();
 card->generation = generation;
 card->reset_jiffies = get_jiffies_64();
 card->bm_node_id = 0xffff;
 card->bm_abdicate = bm_abdicate;
 fw_schedule_bm_work(card, 0);

 local_node = build_tree(card, self_ids, self_id_count);

 update_topology_map(card, self_ids, self_id_count);

 card->color++;

 if (local_node == ((void*)0)) {
  fw_err(card, "topology build failed\n");

 } else if (card->local_node == ((void*)0)) {
  card->local_node = local_node;
  for_each_fw_node(card, local_node, report_found_node);
 } else {
  update_tree(card, local_node);
 }

 spin_unlock_irqrestore(&card->lock, flags);
}
