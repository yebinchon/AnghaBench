
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {int irq; struct pci_dev* pdev; } ;


 int IRQF_SHARED ;
 struct nvkm_pci* nvkm_pci (struct nvkm_subdev*) ;
 int nvkm_pci_intr ;
 int nvkm_pcie_oneinit (struct nvkm_pci*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int request_irq (int ,int ,int ,char*,struct nvkm_pci*) ;

__attribute__((used)) static int
nvkm_pci_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_pci *pci = nvkm_pci(subdev);
 struct pci_dev *pdev = pci->pdev;
 int ret;

 if (pci_is_pcie(pci->pdev)) {
  ret = nvkm_pcie_oneinit(pci);
  if (ret)
   return ret;
 }

 ret = request_irq(pdev->irq, nvkm_pci_intr, IRQF_SHARED, "nvkm", pci);
 if (ret)
  return ret;

 pci->irq = pdev->irq;
 return 0;
}
