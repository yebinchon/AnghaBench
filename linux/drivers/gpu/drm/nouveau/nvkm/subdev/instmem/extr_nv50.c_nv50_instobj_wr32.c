
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ map; } ;


 int iowrite32_native (int ,scalar_t__) ;
 TYPE_1__* nv50_instobj (struct nvkm_memory*) ;

__attribute__((used)) static void
nv50_instobj_wr32(struct nvkm_memory *memory, u64 offset, u32 data)
{
 iowrite32_native(data, nv50_instobj(memory)->map + offset);
}
