
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvif_object {int dummy; } ;
struct TYPE_7__ {int dev; } ;
struct nouveau_plane {int brightness; int contrast; int colorkey; scalar_t__ color_encoding; int flip; scalar_t__ cur; int saturation; int hue; TYPE_3__ base; } ;
struct TYPE_5__ {struct nvif_object object; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
struct TYPE_8__ {TYPE_2__ client; } ;


 scalar_t__ DRM_COLOR_YCBCR_BT709 ;
 int NV_PVIDEO_CHROMINANCE (int) ;
 int NV_PVIDEO_COLOR_KEY ;
 int NV_PVIDEO_FORMAT (int ) ;
 int NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY ;
 int NV_PVIDEO_FORMAT_MATRIX_ITURBT709 ;
 int NV_PVIDEO_LUMINANCE (int) ;
 int cos_mul (int ,int ) ;
 TYPE_4__* nouveau_drm (int ) ;
 int nvif_mask (struct nvif_object*,int ,int,int) ;
 int nvif_wr32 (struct nvif_object*,int ,int) ;
 int sin_mul (int ,int ) ;

__attribute__((used)) static void
nv10_set_params(struct nouveau_plane *plane)
{
 struct nvif_object *dev = &nouveau_drm(plane->base.dev)->client.device.object;
 u32 luma = (plane->brightness - 512) << 16 | plane->contrast;
 u32 chroma = ((sin_mul(plane->hue, plane->saturation) & 0xffff) << 16) |
  (cos_mul(plane->hue, plane->saturation) & 0xffff);
 u32 format = 0;

 nvif_wr32(dev, NV_PVIDEO_LUMINANCE(0), luma);
 nvif_wr32(dev, NV_PVIDEO_LUMINANCE(1), luma);
 nvif_wr32(dev, NV_PVIDEO_CHROMINANCE(0), chroma);
 nvif_wr32(dev, NV_PVIDEO_CHROMINANCE(1), chroma);
 nvif_wr32(dev, NV_PVIDEO_COLOR_KEY, plane->colorkey & 0xffffff);

 if (plane->cur) {
  if (plane->color_encoding == DRM_COLOR_YCBCR_BT709)
   format |= NV_PVIDEO_FORMAT_MATRIX_ITURBT709;
  if (plane->colorkey & (1 << 24))
   format |= NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY;
  nvif_mask(dev, NV_PVIDEO_FORMAT(plane->flip),
   NV_PVIDEO_FORMAT_MATRIX_ITURBT709 |
   NV_PVIDEO_FORMAT_DISPLAY_COLOR_KEY,
   format);
 }
}
