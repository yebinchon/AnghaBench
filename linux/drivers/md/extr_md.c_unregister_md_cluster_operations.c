
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * md_cluster_ops ;
 int pers_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int unregister_md_cluster_operations(void)
{
 spin_lock(&pers_lock);
 md_cluster_ops = ((void*)0);
 spin_unlock(&pers_lock);
 return 0;
}
