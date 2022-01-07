
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,int,int ) ;

void
gf100_mc_unk260(struct nvkm_mc *mc, u32 data)
{
 nvkm_wr32(mc->subdev.device, 0x000260, data);
}
