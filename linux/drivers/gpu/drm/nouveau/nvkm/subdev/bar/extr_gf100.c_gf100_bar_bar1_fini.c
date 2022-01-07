
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;


 int nvkm_mask (int ,int,int,int) ;

void
gf100_bar_bar1_fini(struct nvkm_bar *bar)
{
 nvkm_mask(bar->subdev.device, 0x001704, 0x80000000, 0x00000000);
}
