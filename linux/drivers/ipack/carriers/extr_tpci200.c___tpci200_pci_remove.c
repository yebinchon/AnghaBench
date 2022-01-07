
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpci200_board {struct tpci200_board* info; int ipack_bus; } ;


 int ipack_bus_unregister (int ) ;
 int kfree (struct tpci200_board*) ;
 int tpci200_uninstall (struct tpci200_board*) ;

__attribute__((used)) static void __tpci200_pci_remove(struct tpci200_board *tpci200)
{
 ipack_bus_unregister(tpci200->info->ipack_bus);
 tpci200_uninstall(tpci200);

 kfree(tpci200->info);
 kfree(tpci200);
}
