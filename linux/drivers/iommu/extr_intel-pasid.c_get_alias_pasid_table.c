
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int bus; } ;
struct pasid_table_opaque {int devfn; int bus; int segment; } ;


 int PCI_BUS_NUM (int) ;
 int for_each_device_domain (int *,struct pasid_table_opaque*) ;
 int pci_domain_nr (int ) ;
 int search_pasid_table ;

__attribute__((used)) static int get_alias_pasid_table(struct pci_dev *pdev, u16 alias, void *opaque)
{
 struct pasid_table_opaque *data = opaque;

 data->segment = pci_domain_nr(pdev->bus);
 data->bus = PCI_BUS_NUM(alias);
 data->devfn = alias & 0xff;

 return for_each_device_domain(&search_pasid_table, data);
}
