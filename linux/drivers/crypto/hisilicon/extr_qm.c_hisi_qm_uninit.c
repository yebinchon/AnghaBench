
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {int dma; scalar_t__ va; int size; } ;
struct hisi_qm {int io_base; TYPE_1__ qdma; scalar_t__ use_dma_api; struct pci_dev* pdev; } ;


 int dma_free_coherent (struct device*,int ,scalar_t__,int ) ;
 int hisi_qm_cache_wb (struct hisi_qm*) ;
 int iounmap (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int qm_irq_unregister (struct hisi_qm*) ;

void hisi_qm_uninit(struct hisi_qm *qm)
{
 struct pci_dev *pdev = qm->pdev;
 struct device *dev = &pdev->dev;

 if (qm->use_dma_api && qm->qdma.va) {
  hisi_qm_cache_wb(qm);
  dma_free_coherent(dev, qm->qdma.size,
      qm->qdma.va, qm->qdma.dma);
  memset(&qm->qdma, 0, sizeof(qm->qdma));
 }

 qm_irq_unregister(qm);
 pci_free_irq_vectors(pdev);
 iounmap(qm->io_base);
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
