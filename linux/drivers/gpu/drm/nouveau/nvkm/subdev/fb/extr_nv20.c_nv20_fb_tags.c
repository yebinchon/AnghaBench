
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;


 scalar_t__ const nvkm_rd32 (int ,int) ;

u32
nv20_fb_tags(struct nvkm_fb *fb)
{
 const u32 tags = nvkm_rd32(fb->subdev.device, 0x100320);
 return tags ? tags + 1 : 0;
}
