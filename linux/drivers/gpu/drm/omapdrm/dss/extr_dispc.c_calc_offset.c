
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
typedef int s32 ;
typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;


 scalar_t__ DRM_FORMAT_UYVY ;
 scalar_t__ DRM_FORMAT_YUYV ;
 int DSSDBG (char*,int,int) ;
 int OMAP_DSS_ROT_TILER ;
 int color_mode_to_bpp (scalar_t__) ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 int pixinc (int,unsigned int) ;

__attribute__((used)) static void calc_offset(u16 screen_width, u16 width,
  u32 fourcc, bool fieldmode, unsigned int field_offset,
  unsigned int *offset0, unsigned int *offset1,
  s32 *row_inc, s32 *pix_inc, int x_predecim, int y_predecim,
  enum omap_dss_rotation_type rotation_type, u8 rotation)
{
 u8 ps;

 ps = color_mode_to_bpp(fourcc) / 8;

 DSSDBG("scrw %d, width %d\n", screen_width, width);

 if (rotation_type == OMAP_DSS_ROT_TILER &&
     (fourcc == DRM_FORMAT_UYVY || fourcc == DRM_FORMAT_YUYV) &&
     drm_rotation_90_or_270(rotation)) {
  width *= 2;
 }





 *offset0 = field_offset * screen_width * ps;
 *offset1 = 0;

 *row_inc = pixinc(1 + (y_predecim * screen_width - width * x_predecim) +
   (fieldmode ? screen_width : 0), ps);
 if (fourcc == DRM_FORMAT_YUYV || fourcc == DRM_FORMAT_UYVY)
  *pix_inc = pixinc(x_predecim, 2 * ps);
 else
  *pix_inc = pixinc(x_predecim, ps);
}
