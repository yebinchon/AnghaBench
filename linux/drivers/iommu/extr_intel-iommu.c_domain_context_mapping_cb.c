
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct domain_context_mapping_data {int table; int iommu; int domain; } ;


 int PCI_BUS_NUM (int) ;
 int domain_context_mapping_one (int ,int ,int ,int ,int) ;

__attribute__((used)) static int domain_context_mapping_cb(struct pci_dev *pdev,
         u16 alias, void *opaque)
{
 struct domain_context_mapping_data *data = opaque;

 return domain_context_mapping_one(data->domain, data->iommu,
       data->table, PCI_BUS_NUM(alias),
       alias & 0xff);
}
