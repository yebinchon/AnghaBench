
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int link; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_del_rcu (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void del_edac_device_from_global_list(struct edac_device_ctl_info
      *edac_device)
{
 list_del_rcu(&edac_device->link);




 synchronize_rcu();
 INIT_LIST_HEAD(&edac_device->link);
}
