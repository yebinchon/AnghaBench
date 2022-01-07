
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fault {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gv100_fault ;
 int nvkm_fault_new_ (int *,struct nvkm_device*,int,struct nvkm_fault**) ;

int
gv100_fault_new(struct nvkm_device *device, int index,
  struct nvkm_fault **pfault)
{
 return nvkm_fault_new_(&gv100_fault, device, index, pfault);
}
