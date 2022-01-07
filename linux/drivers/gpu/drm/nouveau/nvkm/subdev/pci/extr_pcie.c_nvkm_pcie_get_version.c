
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_pci {TYPE_2__* func; } ;
struct TYPE_3__ {int (* version ) (struct nvkm_pci*) ;} ;
struct TYPE_4__ {TYPE_1__ pcie; } ;


 int ENOSYS ;
 int stub1 (struct nvkm_pci*) ;

__attribute__((used)) static int
nvkm_pcie_get_version(struct nvkm_pci *pci)
{
 if (!pci->func->pcie.version)
  return -ENOSYS;

 return pci->func->pcie.version(pci);
}
