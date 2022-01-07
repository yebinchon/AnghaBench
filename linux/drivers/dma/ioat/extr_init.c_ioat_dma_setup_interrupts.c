
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct msix_entry {int entry; int vector; } ;
struct TYPE_2__ {int chancnt; } ;
struct ioatdma_device {int irq_mode; scalar_t__ reg_base; struct msix_entry* msix_entries; TYPE_1__ dma_dev; struct pci_dev* pdev; } ;
struct ioatdma_chan {int irq_mode; scalar_t__ reg_base; struct msix_entry* msix_entries; TYPE_1__ dma_dev; struct pci_dev* pdev; } ;


 int EINVAL ;
 int IOAT_INTRCTRL_MASTER_INT_EN ;
 int IOAT_INTRCTRL_MSIX_VECTOR_CONTROL ;
 scalar_t__ IOAT_INTRCTRL_OFFSET ;
 int IOAT_INTX ;
 int IOAT_MSI ;
 int IOAT_MSIX ;
 int IOAT_NOIRQ ;
 int IRQF_SHARED ;
 int dev_err (struct device*,char*,...) ;
 int devm_free_irq (struct device*,int ,struct ioatdma_device*) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct ioatdma_device*) ;
 struct ioatdma_device* ioat_chan_by_index (struct ioatdma_device*,int) ;
 int ioat_dma_do_interrupt ;
 int ioat_dma_do_interrupt_msix ;
 int ioat_interrupt_style ;
 int ioat_intr_quirk (struct ioatdma_device*) ;
 scalar_t__ is_bwd_ioat (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_enable_msix_exact (struct pci_dev*,struct msix_entry*,int) ;
 int strcmp (int ,char*) ;
 int writeb (int ,scalar_t__) ;

int ioat_dma_setup_interrupts(struct ioatdma_device *ioat_dma)
{
 struct ioatdma_chan *ioat_chan;
 struct pci_dev *pdev = ioat_dma->pdev;
 struct device *dev = &pdev->dev;
 struct msix_entry *msix;
 int i, j, msixcnt;
 int err = -EINVAL;
 u8 intrctrl = 0;

 if (!strcmp(ioat_interrupt_style, "msix"))
  goto msix;
 if (!strcmp(ioat_interrupt_style, "msi"))
  goto msi;
 if (!strcmp(ioat_interrupt_style, "intx"))
  goto intx;
 dev_err(dev, "invalid ioat_interrupt_style %s\n", ioat_interrupt_style);
 goto err_no_irq;

msix:

 msixcnt = ioat_dma->dma_dev.chancnt;
 for (i = 0; i < msixcnt; i++)
  ioat_dma->msix_entries[i].entry = i;

 err = pci_enable_msix_exact(pdev, ioat_dma->msix_entries, msixcnt);
 if (err)
  goto msi;

 for (i = 0; i < msixcnt; i++) {
  msix = &ioat_dma->msix_entries[i];
  ioat_chan = ioat_chan_by_index(ioat_dma, i);
  err = devm_request_irq(dev, msix->vector,
           ioat_dma_do_interrupt_msix, 0,
           "ioat-msix", ioat_chan);
  if (err) {
   for (j = 0; j < i; j++) {
    msix = &ioat_dma->msix_entries[j];
    ioat_chan = ioat_chan_by_index(ioat_dma, j);
    devm_free_irq(dev, msix->vector, ioat_chan);
   }
   goto msi;
  }
 }
 intrctrl |= IOAT_INTRCTRL_MSIX_VECTOR_CONTROL;
 ioat_dma->irq_mode = IOAT_MSIX;
 goto done;

msi:
 err = pci_enable_msi(pdev);
 if (err)
  goto intx;

 err = devm_request_irq(dev, pdev->irq, ioat_dma_do_interrupt, 0,
          "ioat-msi", ioat_dma);
 if (err) {
  pci_disable_msi(pdev);
  goto intx;
 }
 ioat_dma->irq_mode = IOAT_MSI;
 goto done;

intx:
 err = devm_request_irq(dev, pdev->irq, ioat_dma_do_interrupt,
          IRQF_SHARED, "ioat-intx", ioat_dma);
 if (err)
  goto err_no_irq;

 ioat_dma->irq_mode = IOAT_INTX;
done:
 if (is_bwd_ioat(pdev))
  ioat_intr_quirk(ioat_dma);
 intrctrl |= IOAT_INTRCTRL_MASTER_INT_EN;
 writeb(intrctrl, ioat_dma->reg_base + IOAT_INTRCTRL_OFFSET);
 return 0;

err_no_irq:

 writeb(0, ioat_dma->reg_base + IOAT_INTRCTRL_OFFSET);
 ioat_dma->irq_mode = IOAT_NOIRQ;
 dev_err(dev, "no usable interrupts\n");
 return err;
}
