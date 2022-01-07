
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct nv40_instobj {TYPE_2__* node; TYPE_1__* imem; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ iomem; } ;


 int ioread32_native (scalar_t__) ;
 struct nv40_instobj* nv40_instobj (struct nvkm_memory*) ;

__attribute__((used)) static u32
nv40_instobj_rd32(struct nvkm_memory *memory, u64 offset)
{
 struct nv40_instobj *iobj = nv40_instobj(memory);
 return ioread32_native(iobj->imem->iomem + iobj->node->offset + offset);
}
