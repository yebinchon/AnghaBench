
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct set_msi_sid_data {int count; int busmatch_count; int alias; TYPE_2__* pdev; } ;
struct pci_dev {TYPE_3__* bus; } ;
struct irte {int dummy; } ;
struct TYPE_6__ {scalar_t__ number; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {scalar_t__ number; } ;


 scalar_t__ PCI_BUS_NUM (int ) ;
 int SQ_ALL_16 ;
 int SVT_VERIFY_SID_SQ ;
 int pci_dev_id (struct pci_dev*) ;
 int pci_for_each_dma_alias (struct pci_dev*,int ,struct set_msi_sid_data*) ;
 int set_irte_sid (struct irte*,int ,int ,int ) ;
 int set_irte_verify_bus (struct irte*,scalar_t__,scalar_t__) ;
 int set_msi_sid_cb ;

__attribute__((used)) static int set_msi_sid(struct irte *irte, struct pci_dev *dev)
{
 struct set_msi_sid_data data;

 if (!irte || !dev)
  return -1;

 data.count = 0;
 data.busmatch_count = 0;
 pci_for_each_dma_alias(dev, set_msi_sid_cb, &data);
 if (PCI_BUS_NUM(data.alias) != data.pdev->bus->number)
  set_irte_verify_bus(irte, PCI_BUS_NUM(data.alias),
        dev->bus->number);
 else if (data.count >= 2 && data.busmatch_count == data.count)
  set_irte_verify_bus(irte, dev->bus->number, dev->bus->number);
 else if (data.pdev->bus->number != dev->bus->number)
  set_irte_sid(irte, SVT_VERIFY_SID_SQ, SQ_ALL_16, data.alias);
 else
  set_irte_sid(irte, SVT_VERIFY_SID_SQ, SQ_ALL_16,
        pci_dev_id(dev));

 return 0;
}
