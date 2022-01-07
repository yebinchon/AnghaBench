
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int link; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int mc_devices ;
 int synchronize_rcu () ;

__attribute__((used)) static int del_mc_from_global_list(struct mem_ctl_info *mci)
{
 list_del_rcu(&mci->link);




 synchronize_rcu();
 INIT_LIST_HEAD(&mci->link);

 return list_empty(&mc_devices);
}
