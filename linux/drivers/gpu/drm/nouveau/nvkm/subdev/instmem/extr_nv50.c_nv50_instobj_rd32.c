
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ map; } ;


 int ioread32_native (scalar_t__) ;
 TYPE_1__* nv50_instobj (struct nvkm_memory*) ;

__attribute__((used)) static u32
nv50_instobj_rd32(struct nvkm_memory *memory, u64 offset)
{
 return ioread32_native(nv50_instobj(memory)->map + offset);
}
