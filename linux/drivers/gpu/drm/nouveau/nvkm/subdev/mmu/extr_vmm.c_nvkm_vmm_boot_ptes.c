
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_vmm_iter {int vmm; TYPE_2__** pt; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int type; } ;
struct TYPE_4__ {TYPE_1__** pt; } ;
struct TYPE_3__ {int memory; } ;


 int SPT ;
 int nvkm_memory_boot (int ,int ) ;

__attribute__((used)) static bool
nvkm_vmm_boot_ptes(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
 const struct nvkm_vmm_desc *desc = it->desc;
 const int type = desc->type == SPT;
 nvkm_memory_boot(it->pt[0]->pt[type]->memory, it->vmm);
 return 0;
}
