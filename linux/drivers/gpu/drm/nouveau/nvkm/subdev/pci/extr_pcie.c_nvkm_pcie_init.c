
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_6__ {int speed; int width; } ;
struct nvkm_pci {TYPE_3__ pcie; TYPE_2__* func; struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int (* init ) (struct nvkm_pci*) ;} ;
struct TYPE_5__ {TYPE_1__ pcie; } ;


 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_pcie_get_max_version (struct nvkm_pci*) ;
 int nvkm_pcie_get_version (struct nvkm_pci*) ;
 int nvkm_pcie_set_link (struct nvkm_pci*,int,int ) ;
 int nvkm_pcie_set_version (struct nvkm_pci*,int) ;
 int stub1 (struct nvkm_pci*) ;

int
nvkm_pcie_init(struct nvkm_pci *pci)
{
 struct nvkm_subdev *subdev = &pci->subdev;
 int ret;


 ret = nvkm_pcie_get_version(pci);
 if (ret > 0) {
  int max_version = nvkm_pcie_get_max_version(pci);
  if (max_version > 0 && max_version > ret)
   ret = nvkm_pcie_set_version(pci, max_version);

  if (ret < max_version)
   nvkm_error(subdev, "couldn't raise version: %i\n", ret);
 }

 if (pci->func->pcie.init)
  pci->func->pcie.init(pci);

 if (pci->pcie.speed != -1)
  nvkm_pcie_set_link(pci, pci->pcie.speed, pci->pcie.width);

 return 0;
}
