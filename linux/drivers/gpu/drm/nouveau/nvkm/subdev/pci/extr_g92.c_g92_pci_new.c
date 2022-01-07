
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pci {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g92_pci_func ;
 int nvkm_pci_new_ (int *,struct nvkm_device*,int,struct nvkm_pci**) ;

int
g92_pci_new(struct nvkm_device *device, int index, struct nvkm_pci **ppci)
{
 return nvkm_pci_new_(&g92_pci_func, device, index, ppci);
}
