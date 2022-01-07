
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ali1563_adapter ;
 int ali1563_shutdown (struct pci_dev*) ;
 int i2c_del_adapter (int *) ;

__attribute__((used)) static void ali1563_remove(struct pci_dev *dev)
{
 i2c_del_adapter(&ali1563_adapter);
 ali1563_shutdown(dev);
}
