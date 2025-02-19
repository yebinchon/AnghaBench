
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_info {int color_formats; int bpc; } ;
struct drm_connector {struct drm_display_info display_info; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int DRM_COLOR_FORMAT_RGB444 ;
 int DRM_COLOR_FORMAT_YCRCB422 ;
 int DRM_COLOR_FORMAT_YCRCB444 ;
 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
     struct drm_connector *connector)
{
 struct drm_display_info *di = &connector->display_info;

 u32 mask = DRM_COLOR_FORMAT_YCRCB444 | DRM_COLOR_FORMAT_YCRCB422;

 if ((di->color_formats & mask)) {
  DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
  di->color_formats &= ~mask;
  di->color_formats |= DRM_COLOR_FORMAT_RGB444;
  di->bpc = 8;
 }

 return 0;
}
