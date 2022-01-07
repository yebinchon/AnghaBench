
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {struct list_head* next; } ;
struct fw_node {int color; scalar_t__ phy_speed; TYPE_1__ link; struct fw_node** ports; } ;
struct fw_card {size_t color; int node_id; int gap_count; int beta_repeaters_present; struct fw_node* irm_node; struct fw_node* root_node; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ SCODE_BETA ;


 scalar_t__ SELF_ID_CONTENDER (int ) ;
 int SELF_ID_GAP_COUNT (int ) ;
 int SELF_ID_PHY_ID (int ) ;
 int __list_del (struct list_head*,struct list_head*) ;
 int * count_ports (int *,int*,int*) ;
 int fw_err (struct fw_card*,char*,...) ;
 struct fw_node* fw_node (struct list_head*) ;
 struct fw_node* fw_node_create (int ,int,size_t) ;
 int get_port_type (int *,int) ;
 int list_add_tail (TYPE_1__*,struct list_head*) ;
 int update_hop_count (struct fw_node*) ;

__attribute__((used)) static struct fw_node *build_tree(struct fw_card *card,
      u32 *sid, int self_id_count)
{
 struct fw_node *node, *child, *local_node, *irm_node;
 struct list_head stack, *h;
 u32 *next_sid, *end, q;
 int i, port_count, child_port_count, phy_id, parent_count, stack_depth;
 int gap_count;
 bool beta_repeaters_present;

 local_node = ((void*)0);
 node = ((void*)0);
 INIT_LIST_HEAD(&stack);
 stack_depth = 0;
 end = sid + self_id_count;
 phy_id = 0;
 irm_node = ((void*)0);
 gap_count = SELF_ID_GAP_COUNT(*sid);
 beta_repeaters_present = 0;

 while (sid < end) {
  next_sid = count_ports(sid, &port_count, &child_port_count);

  if (next_sid == ((void*)0)) {
   fw_err(card, "inconsistent extended self IDs\n");
   return ((void*)0);
  }

  q = *sid;
  if (phy_id != SELF_ID_PHY_ID(q)) {
   fw_err(card, "PHY ID mismatch in self ID: %d != %d\n",
          phy_id, SELF_ID_PHY_ID(q));
   return ((void*)0);
  }

  if (child_port_count > stack_depth) {
   fw_err(card, "topology stack underflow\n");
   return ((void*)0);
  }





  for (i = 0, h = &stack; i < child_port_count; i++)
   h = h->prev;




  child = fw_node(h);

  node = fw_node_create(q, port_count, card->color);
  if (node == ((void*)0)) {
   fw_err(card, "out of memory while building topology\n");
   return ((void*)0);
  }

  if (phy_id == (card->node_id & 0x3f))
   local_node = node;

  if (SELF_ID_CONTENDER(q))
   irm_node = node;

  parent_count = 0;

  for (i = 0; i < port_count; i++) {
   switch (get_port_type(sid, i)) {
   case 128:
    parent_count++;
    node->color = i;
    break;

   case 129:
    node->ports[i] = child;




    child->ports[child->color] = node;
    child->color = card->color;
    child = fw_node(child->link.next);
    break;
   }
  }






  if ((next_sid == end && parent_count != 0) ||
      (next_sid < end && parent_count != 1)) {
   fw_err(card, "parent port inconsistency for node %d: "
          "parent_count=%d\n", phy_id, parent_count);
   return ((void*)0);
  }


  __list_del(h->prev, &stack);
  list_add_tail(&node->link, &stack);
  stack_depth += 1 - child_port_count;

  if (node->phy_speed == SCODE_BETA &&
      parent_count + child_port_count > 1)
   beta_repeaters_present = 1;





  if (SELF_ID_GAP_COUNT(q) != gap_count)
   gap_count = 0;

  update_hop_count(node);

  sid = next_sid;
  phy_id++;
 }

 card->root_node = node;
 card->irm_node = irm_node;
 card->gap_count = gap_count;
 card->beta_repeaters_present = beta_repeaters_present;

 return local_node;
}
