
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chipset; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct nouveau_bo {int dummy; } ;
struct drm_device {int dummy; } ;


 int nouveau_bo_rd32 (struct nouveau_bo*,int) ;
 int nouveau_bo_wr32 (struct nouveau_bo*,int,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static void nv11_cursor_upload(struct drm_device *dev, struct nouveau_bo *src,
          struct nouveau_bo *dst)
{
 uint32_t pixel;
 int alpha, i;







 for (i = 0; i < 64 * 64; i++) {
  pixel = nouveau_bo_rd32(src, i);






  alpha = pixel >> 24;
  if (alpha > 0 && alpha < 255)
   pixel = (pixel & 0x00ffffff) | ((alpha + 1) << 24);
  nouveau_bo_wr32(dst, i, pixel);
 }
}
