
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;


 int nvkm_mask (int ,int,int ,int ) ;

__attribute__((used)) static void
gt215_mc_intr_mask(struct nvkm_mc *mc, u32 mask, u32 stat)
{
 nvkm_mask(mc->subdev.device, 0x000640, mask, stat);
}
