
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;



__attribute__((used)) static int its_get_pci_alias(struct pci_dev *pdev, u16 alias, void *data)
{
 struct pci_dev **alias_dev = data;

 *alias_dev = pdev;

 return 0;
}
