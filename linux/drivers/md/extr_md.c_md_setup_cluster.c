
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int dummy; } ;
struct TYPE_2__ {int (* join ) (struct mddev*,int) ;} ;


 int ENOENT ;
 int md_cluster_mod ;
 TYPE_1__* md_cluster_ops ;
 int pers_lock ;
 int pr_warn (char*) ;
 int request_module (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mddev*,int) ;
 int try_module_get (int ) ;

int md_setup_cluster(struct mddev *mddev, int nodes)
{
 if (!md_cluster_ops)
  request_module("md-cluster");
 spin_lock(&pers_lock);

 if (!md_cluster_ops || !try_module_get(md_cluster_mod)) {
  pr_warn("can't find md-cluster module or get it's reference.\n");
  spin_unlock(&pers_lock);
  return -ENOENT;
 }
 spin_unlock(&pers_lock);

 return md_cluster_ops->join(mddev, nodes);
}
