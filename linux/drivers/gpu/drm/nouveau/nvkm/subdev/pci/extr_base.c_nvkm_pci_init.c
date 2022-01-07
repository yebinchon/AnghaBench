
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_3__ {scalar_t__ bridge; } ;
struct nvkm_pci {TYPE_2__* func; scalar_t__ msi; int pdev; TYPE_1__ agp; } ;
struct TYPE_4__ {int (* msi_rearm ) (struct nvkm_pci*) ;int (* init ) (struct nvkm_pci*) ;} ;


 int nvkm_agp_init (struct nvkm_pci*) ;
 struct nvkm_pci* nvkm_pci (struct nvkm_subdev*) ;
 int nvkm_pcie_init (struct nvkm_pci*) ;
 scalar_t__ pci_is_pcie (int ) ;
 int stub1 (struct nvkm_pci*) ;
 int stub2 (struct nvkm_pci*) ;

__attribute__((used)) static int
nvkm_pci_init(struct nvkm_subdev *subdev)
{
 struct nvkm_pci *pci = nvkm_pci(subdev);
 int ret;

 if (pci->agp.bridge) {
  ret = nvkm_agp_init(pci);
  if (ret)
   return ret;
 } else if (pci_is_pcie(pci->pdev)) {
  nvkm_pcie_init(pci);
 }

 if (pci->func->init)
  pci->func->init(pci);




 if (pci->msi)
  pci->func->msi_rearm(pci);

 return 0;
}
