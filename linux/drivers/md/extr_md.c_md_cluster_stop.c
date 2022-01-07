
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int dummy; } ;
struct TYPE_2__ {int (* leave ) (struct mddev*) ;} ;


 int md_cluster_mod ;
 TYPE_1__* md_cluster_ops ;
 int module_put (int ) ;
 int stub1 (struct mddev*) ;

void md_cluster_stop(struct mddev *mddev)
{
 if (!md_cluster_ops)
  return;
 md_cluster_ops->leave(mddev);
 module_put(md_cluster_mod);
}
