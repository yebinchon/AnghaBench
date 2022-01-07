
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct set_msi_sid_data {scalar_t__ count; int alias; struct pci_dev* pdev; int busmatch_count; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_BUS_NUM (int ) ;

__attribute__((used)) static int set_msi_sid_cb(struct pci_dev *pdev, u16 alias, void *opaque)
{
 struct set_msi_sid_data *data = opaque;

 if (data->count == 0 || PCI_BUS_NUM(alias) == PCI_BUS_NUM(data->alias))
  data->busmatch_count++;

 data->pdev = pdev;
 data->alias = alias;
 data->count++;

 return 0;
}
