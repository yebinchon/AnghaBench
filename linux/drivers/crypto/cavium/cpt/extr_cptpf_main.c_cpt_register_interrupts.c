
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct cpt_device {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int CPT_PF_INT_VEC_E_MBOXX (int ) ;
 int CPT_PF_MSIX_VECTORS ;
 int PCI_IRQ_MSIX ;
 int cpt_enable_mbox_interrupts (struct cpt_device*) ;
 int cpt_mbx0_intr_handler ;
 int dev_err (struct device*,char*,...) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int ,int ,int ) ;
 int pci_disable_msix (TYPE_1__*) ;
 int pci_irq_vector (TYPE_1__*,int ) ;
 int request_irq (int ,int ,int ,char*,struct cpt_device*) ;

__attribute__((used)) static int cpt_register_interrupts(struct cpt_device *cpt)
{
 int ret;
 struct device *dev = &cpt->pdev->dev;


 ret = pci_alloc_irq_vectors(cpt->pdev, CPT_PF_MSIX_VECTORS,
   CPT_PF_MSIX_VECTORS, PCI_IRQ_MSIX);
 if (ret < 0) {
  dev_err(&cpt->pdev->dev, "Request for #%d msix vectors failed\n",
   CPT_PF_MSIX_VECTORS);
  return ret;
 }


 ret = request_irq(pci_irq_vector(cpt->pdev, CPT_PF_INT_VEC_E_MBOXX(0)),
     cpt_mbx0_intr_handler, 0, "CPT Mbox0", cpt);
 if (ret)
  goto fail;


 cpt_enable_mbox_interrupts(cpt);
 return 0;

fail:
 dev_err(dev, "Request irq failed\n");
 pci_disable_msix(cpt->pdev);
 return ret;
}
