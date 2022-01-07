
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_pci {TYPE_2__* func; int subdev; } ;
struct TYPE_3__ {int (* set_version ) (struct nvkm_pci*,int) ;} ;
struct TYPE_4__ {TYPE_1__ pcie; } ;


 int ENOSYS ;
 int nvkm_pcie_get_version (struct nvkm_pci*) ;
 int nvkm_trace (int *,char*,int) ;
 int stub1 (struct nvkm_pci*,int) ;

__attribute__((used)) static int
nvkm_pcie_set_version(struct nvkm_pci *pci, int version)
{
 if (!pci->func->pcie.set_version)
  return -ENOSYS;

 nvkm_trace(&pci->subdev, "set to version %i\n", version);
 pci->func->pcie.set_version(pci, version);
 return nvkm_pcie_get_version(pci);
}
