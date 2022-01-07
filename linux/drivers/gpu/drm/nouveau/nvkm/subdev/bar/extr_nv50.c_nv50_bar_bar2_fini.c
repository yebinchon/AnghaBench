
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,int,int) ;

void
nv50_bar_bar2_fini(struct nvkm_bar *bar)
{
 nvkm_wr32(bar->subdev.device, 0x00170c, 0x00000000);
}
