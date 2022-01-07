
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_node {int color; int node_id; int port_count; int link; int ref_count; int initiated_reset; int phy_speed; int link_on; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int LOCAL_BUS ;
 int SELF_ID_LINK_ON (int ) ;
 int SELF_ID_PHY_ID (int ) ;
 int SELF_ID_PHY_INITIATOR (int ) ;
 int SELF_ID_PHY_SPEED (int ) ;
 struct fw_node* kzalloc (int ,int ) ;
 int ports ;
 int refcount_set (int *,int) ;
 int struct_size (struct fw_node*,int ,int) ;

__attribute__((used)) static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
{
 struct fw_node *node;

 node = kzalloc(struct_size(node, ports, port_count), GFP_ATOMIC);
 if (node == ((void*)0))
  return ((void*)0);

 node->color = color;
 node->node_id = LOCAL_BUS | SELF_ID_PHY_ID(sid);
 node->link_on = SELF_ID_LINK_ON(sid);
 node->phy_speed = SELF_ID_PHY_SPEED(sid);
 node->initiated_reset = SELF_ID_PHY_INITIATOR(sid);
 node->port_count = port_count;

 refcount_set(&node->ref_count, 1);
 INIT_LIST_HEAD(&node->link);

 return node;
}
