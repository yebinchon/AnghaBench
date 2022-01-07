
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;


 int nvkm_mask (int ,int,int,int) ;

__attribute__((used)) static void
nv40_fb_init(struct nvkm_fb *fb)
{
 nvkm_mask(fb->subdev.device, 0x10033c, 0x00008000, 0x00000000);
}
