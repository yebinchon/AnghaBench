
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,int,int) ;

void
nv41_fb_init(struct nvkm_fb *fb)
{
 nvkm_wr32(fb->subdev.device, 0x100800, 0x00000001);
}
