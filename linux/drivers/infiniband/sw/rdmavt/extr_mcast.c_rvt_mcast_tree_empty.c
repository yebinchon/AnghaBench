
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nports; } ;
struct rvt_dev_info {TYPE_3__** ports; TYPE_1__ dparms; } ;
struct TYPE_5__ {scalar_t__ rb_node; } ;
struct TYPE_6__ {TYPE_2__ mcast_tree; } ;



int rvt_mcast_tree_empty(struct rvt_dev_info *rdi)
{
 int i;
 int in_use = 0;

 for (i = 0; i < rdi->dparms.nports; i++)
  if (rdi->ports[i]->mcast_tree.rb_node)
   in_use++;
 return in_use;
}
