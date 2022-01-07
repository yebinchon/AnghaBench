
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 scalar_t__ DRM_FORMAT_NV12 ;
 scalar_t__ DRM_FORMAT_UYVY ;
 scalar_t__ DRM_FORMAT_YUYV ;
 int DRM_MODE_REFLECT_X ;




 int DRM_MODE_ROTATE_MASK ;
 int FEAT_ROWREPEATENABLE ;
 int OMAP_DSS_ROT_TILER ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;
 scalar_t__ dispc_ovl_color_mode_supported (struct dispc_device*,int,scalar_t__) ;
 scalar_t__ drm_rotation_90_or_270 (int) ;

__attribute__((used)) static void dispc_ovl_set_rotation_attrs(struct dispc_device *dispc,
      enum omap_plane_id plane, u8 rotation,
      enum omap_dss_rotation_type rotation_type,
      u32 fourcc)
{
 bool row_repeat = 0;
 int vidrot = 0;


 if (fourcc == DRM_FORMAT_YUYV || fourcc == DRM_FORMAT_UYVY) {

  if (rotation & DRM_MODE_REFLECT_X) {
   switch (rotation & DRM_MODE_ROTATE_MASK) {
   case 131:
    vidrot = 2;
    break;
   case 128:
    vidrot = 1;
    break;
   case 130:
    vidrot = 0;
    break;
   case 129:
    vidrot = 3;
    break;
   }
  } else {
   switch (rotation & DRM_MODE_ROTATE_MASK) {
   case 131:
    vidrot = 0;
    break;
   case 128:
    vidrot = 3;
    break;
   case 130:
    vidrot = 2;
    break;
   case 129:
    vidrot = 1;
    break;
   }
  }

  if (drm_rotation_90_or_270(rotation))
   row_repeat = 1;
  else
   row_repeat = 0;
 }






 if (fourcc == DRM_FORMAT_NV12 && rotation_type != OMAP_DSS_ROT_TILER)
  vidrot = 1;

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), vidrot, 13, 12);
 if (dispc_has_feature(dispc, FEAT_ROWREPEATENABLE))
  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane),
   row_repeat ? 1 : 0, 18, 18);

 if (dispc_ovl_color_mode_supported(dispc, plane, DRM_FORMAT_NV12)) {
  bool doublestride =
   fourcc == DRM_FORMAT_NV12 &&
   rotation_type == OMAP_DSS_ROT_TILER &&
   !drm_rotation_90_or_270(rotation);


  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane),
       doublestride, 22, 22);
 }
}
