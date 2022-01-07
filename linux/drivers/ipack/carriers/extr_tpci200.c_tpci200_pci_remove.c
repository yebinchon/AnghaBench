
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpci200_board {int dummy; } ;
struct pci_dev {int dummy; } ;


 int __tpci200_pci_remove (struct tpci200_board*) ;
 struct tpci200_board* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void tpci200_pci_remove(struct pci_dev *dev)
{
 struct tpci200_board *tpci200 = pci_get_drvdata(dev);

 __tpci200_pci_remove(tpci200);
}
