
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;



__attribute__((used)) static int __last_alias(struct pci_dev *pdev, u16 alias, void *data)
{
 *(u16 *)data = alias;
 return 0;
}
