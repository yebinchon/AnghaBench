
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int link; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_del_rcu (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void del_edac_pci_from_global_list(struct edac_pci_ctl_info *pci)
{
 list_del_rcu(&pci->link);




 synchronize_rcu();
 INIT_LIST_HEAD(&pci->link);
}
