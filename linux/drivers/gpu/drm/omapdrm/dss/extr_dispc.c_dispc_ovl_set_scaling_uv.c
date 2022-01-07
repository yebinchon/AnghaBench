
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct drm_format_info {int is_yuv; } ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;
 int DISPC_COLOR_COMPONENT_UV ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int DISPC_OVL_ATTRIBUTES2 (int) ;



 int DRM_MODE_ROTATE_0 ;
 int DRM_MODE_ROTATE_MASK ;
 int FEAT_HANDLE_UV_SEPARATE ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_ovl_set_accu_uv (struct dispc_device*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ;
 int dispc_ovl_set_scale_param (struct dispc_device*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int ) ;
 struct drm_format_info* drm_format_info (int) ;
 int drm_rotation_90_or_270 (int) ;

__attribute__((used)) static void dispc_ovl_set_scaling_uv(struct dispc_device *dispc,
         enum omap_plane_id plane,
         u16 orig_width, u16 orig_height,
         u16 out_width, u16 out_height,
         bool ilace, bool five_taps,
         bool fieldmode, u32 fourcc,
         u8 rotation)
{
 int scale_x = out_width != orig_width;
 int scale_y = out_height != orig_height;
 bool chroma_upscale = plane != OMAP_DSS_WB;
 const struct drm_format_info *info;

 info = drm_format_info(fourcc);

 if (!dispc_has_feature(dispc, FEAT_HANDLE_UV_SEPARATE))
  return;

 if (!info->is_yuv) {

  if (plane != OMAP_DSS_WB)
   REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES2(plane),
        0, 8, 8);
  return;
 }

 dispc_ovl_set_accu_uv(dispc, plane, orig_width, orig_height, out_width,
         out_height, ilace, fourcc, rotation);

 switch (fourcc) {
 case 130:
  if (chroma_upscale) {

   orig_height >>= 1;
   orig_width >>= 1;
  } else {

   orig_height <<= 1;
   orig_width <<= 1;
  }

  break;
 case 128:
 case 129:

  if (!drm_rotation_90_or_270(rotation)) {
   if (chroma_upscale)

    orig_width >>= 1;
   else

    orig_width <<= 1;
  }


  if ((rotation & DRM_MODE_ROTATE_MASK) != DRM_MODE_ROTATE_0)
   scale_x = scale_y = 1;

  break;
 default:
  BUG();
  return;
 }

 if (out_width != orig_width)
  scale_x = 1;
 if (out_height != orig_height)
  scale_y = 1;

 dispc_ovl_set_scale_param(dispc, plane, orig_width, orig_height,
      out_width, out_height, five_taps,
      rotation, DISPC_COLOR_COMPONENT_UV);

 if (plane != OMAP_DSS_WB)
  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES2(plane),
   (scale_x || scale_y) ? 1 : 0, 8, 8);


 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), scale_x ? 1 : 0, 5, 5);

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), scale_y ? 1 : 0, 6, 6);
}
