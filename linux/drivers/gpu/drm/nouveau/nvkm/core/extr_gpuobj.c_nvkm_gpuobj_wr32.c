
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_gpuobj {TYPE_1__* node; int parent; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int nvkm_wo32 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
nvkm_gpuobj_wr32(struct nvkm_gpuobj *gpuobj, u32 offset, u32 data)
{
 nvkm_wo32(gpuobj->parent, gpuobj->node->offset + offset, data);
}
