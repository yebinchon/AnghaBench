
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvif_mmu {int type_nr; TYPE_2__* type; } ;
struct TYPE_3__ {int * client; } ;
struct nvif_mem {TYPE_1__ object; } ;
typedef int s32 ;
struct TYPE_4__ {int type; } ;


 int EINVAL ;
 int nvif_mem_init_type (struct nvif_mmu*,int ,int,int,int ,void*,int ,struct nvif_mem*) ;

int
nvif_mem_init(struct nvif_mmu *mmu, s32 oclass, u8 type, u8 page,
       u64 size, void *argv, u32 argc, struct nvif_mem *mem)
{
 int ret = -EINVAL, i;

 mem->object.client = ((void*)0);

 for (i = 0; ret && i < mmu->type_nr; i++) {
  if ((mmu->type[i].type & type) == type) {
   ret = nvif_mem_init_type(mmu, oclass, i, page, size,
       argv, argc, mem);
  }
 }

 return ret;
}
