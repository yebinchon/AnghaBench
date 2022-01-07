
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {int irq; int pdev; scalar_t__ msi; } ;


 int free_irq (int,struct nvkm_pci*) ;
 int nvkm_agp_dtor (struct nvkm_pci*) ;
 void* nvkm_pci (struct nvkm_subdev*) ;
 int pci_disable_msi (int ) ;

__attribute__((used)) static void *
nvkm_pci_dtor(struct nvkm_subdev *subdev)
{
 struct nvkm_pci *pci = nvkm_pci(subdev);

 nvkm_agp_dtor(pci);

 if (pci->irq >= 0) {



  int irq = pci->irq;
  pci->irq = -1;
  free_irq(irq, pci);
 }

 if (pci->msi)
  pci_disable_msi(pci->pdev);

 return nvkm_pci(subdev);
}
