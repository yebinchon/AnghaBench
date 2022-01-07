
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ bridge; } ;
struct nvkm_pci {TYPE_1__ agp; } ;


 int nvkm_agp_fini (struct nvkm_pci*) ;
 struct nvkm_pci* nvkm_pci (struct nvkm_subdev*) ;

__attribute__((used)) static int
nvkm_pci_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_pci *pci = nvkm_pci(subdev);

 if (pci->agp.bridge)
  nvkm_agp_fini(pci);

 return 0;
}
