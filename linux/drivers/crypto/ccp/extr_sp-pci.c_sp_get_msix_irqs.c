
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sp_pci {int msix_count; TYPE_1__* msix_entry; } ;
struct sp_device {int use_tasklet; int ccp_irq; int psp_irq; struct device* dev; struct sp_pci* dev_specific; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int entry; int vector; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int pci_enable_msix_range (struct pci_dev*,TYPE_1__*,int,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int sp_get_msix_irqs(struct sp_device *sp)
{
 struct sp_pci *sp_pci = sp->dev_specific;
 struct device *dev = sp->dev;
 struct pci_dev *pdev = to_pci_dev(dev);
 int v, ret;

 for (v = 0; v < ARRAY_SIZE(sp_pci->msix_entry); v++)
  sp_pci->msix_entry[v].entry = v;

 ret = pci_enable_msix_range(pdev, sp_pci->msix_entry, 1, v);
 if (ret < 0)
  return ret;

 sp_pci->msix_count = ret;
 sp->use_tasklet = 1;

 sp->psp_irq = sp_pci->msix_entry[0].vector;
 sp->ccp_irq = (sp_pci->msix_count > 1) ? sp_pci->msix_entry[1].vector
            : sp_pci->msix_entry[0].vector;
 return 0;
}
