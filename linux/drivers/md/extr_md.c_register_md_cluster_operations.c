
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct md_cluster_operations {int dummy; } ;


 int EALREADY ;
 struct module* md_cluster_mod ;
 struct md_cluster_operations* md_cluster_ops ;
 int pers_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int register_md_cluster_operations(struct md_cluster_operations *ops,
       struct module *module)
{
 int ret = 0;
 spin_lock(&pers_lock);
 if (md_cluster_ops != ((void*)0))
  ret = -EALREADY;
 else {
  md_cluster_ops = ops;
  md_cluster_mod = module;
 }
 spin_unlock(&pers_lock);
 return ret;
}
