
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct ioat_dca_priv {int max_requesters; int requester_count; TYPE_1__* req_slots; scalar_t__ iobase; scalar_t__ dca_base; } ;
struct device {int dummy; } ;
struct dca_provider {int dummy; } ;
struct TYPE_2__ {scalar_t__ rid; struct pci_dev* pdev; } ;


 int ENODEV ;
 scalar_t__ IOAT3_DCA_GREQID_OFFSET ;
 struct ioat_dca_priv* dca_priv (struct dca_provider*) ;
 int dev_is_pci (struct device*) ;
 scalar_t__ readw (scalar_t__) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ioat_dca_remove_requester(struct dca_provider *dca,
          struct device *dev)
{
 struct ioat_dca_priv *ioatdca = dca_priv(dca);
 struct pci_dev *pdev;
 int i;
 u16 global_req_table;


 if (!dev_is_pci(dev))
  return -ENODEV;
 pdev = to_pci_dev(dev);

 for (i = 0; i < ioatdca->max_requesters; i++) {
  if (ioatdca->req_slots[i].pdev == pdev) {
   global_req_table =
         readw(ioatdca->dca_base + IOAT3_DCA_GREQID_OFFSET);
   writel(0, ioatdca->iobase + global_req_table + (i * 4));
   ioatdca->req_slots[i].pdev = ((void*)0);
   ioatdca->req_slots[i].rid = 0;
   ioatdca->requester_count--;
   return i;
  }
 }
 return -ENODEV;
}
