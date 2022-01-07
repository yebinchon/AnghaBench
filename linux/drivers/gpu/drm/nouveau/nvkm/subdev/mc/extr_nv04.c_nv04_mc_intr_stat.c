
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;


 int nvkm_rd32 (int ,int) ;

u32
nv04_mc_intr_stat(struct nvkm_mc *mc)
{
 return nvkm_rd32(mc->subdev.device, 0x000100);
}
