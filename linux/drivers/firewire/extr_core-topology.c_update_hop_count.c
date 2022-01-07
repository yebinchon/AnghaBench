
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_node {int port_count; int max_depth; int max_hops; TYPE_1__** ports; } ;
struct TYPE_2__ {int max_hops; int max_depth; } ;


 int max (int,int) ;

__attribute__((used)) static void update_hop_count(struct fw_node *node)
{
 int depths[2] = { -1, -1 };
 int max_child_hops = 0;
 int i;

 for (i = 0; i < node->port_count; i++) {
  if (node->ports[i] == ((void*)0))
   continue;

  if (node->ports[i]->max_hops > max_child_hops)
   max_child_hops = node->ports[i]->max_hops;

  if (node->ports[i]->max_depth > depths[0]) {
   depths[1] = depths[0];
   depths[0] = node->ports[i]->max_depth;
  } else if (node->ports[i]->max_depth > depths[1])
   depths[1] = node->ports[i]->max_depth;
 }

 node->max_depth = depths[0] + 1;
 node->max_hops = max(max_child_hops, depths[0] + depths[1] + 2);
}
