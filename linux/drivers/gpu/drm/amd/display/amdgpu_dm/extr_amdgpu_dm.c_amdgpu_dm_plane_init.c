
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_plane {TYPE_3__* funcs; int type; } ;
struct TYPE_5__ {scalar_t__ nv12; } ;
struct dc_plane_cap {TYPE_2__ pixel_format_support; scalar_t__ per_pixel_alpha; } ;
struct amdgpu_display_manager {TYPE_1__* adev; } ;
struct TYPE_6__ {int (* reset ) (struct drm_plane*) ;} ;
struct TYPE_4__ {int ddev; } ;


 int ARRAY_SIZE (int *) ;
 unsigned int BIT (int ) ;
 int DRM_COLOR_YCBCR_BT601 ;
 int DRM_COLOR_YCBCR_BT709 ;
 int DRM_COLOR_YCBCR_FULL_RANGE ;
 int DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int DRM_MODE_BLEND_PIXEL_NONE ;
 int DRM_MODE_BLEND_PREMULTI ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int EPERM ;
 int dm_plane_funcs ;
 int dm_plane_helper_funcs ;
 int drm_plane_create_alpha_property (struct drm_plane*) ;
 int drm_plane_create_blend_mode_property (struct drm_plane*,unsigned int) ;
 int drm_plane_create_color_properties (struct drm_plane*,unsigned int,unsigned int,int ,int ) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (int ,struct drm_plane*,unsigned long,int *,int *,int,int *,int ,int *) ;
 int get_plane_formats (struct drm_plane*,struct dc_plane_cap const*,int *,int ) ;
 int stub1 (struct drm_plane*) ;

__attribute__((used)) static int amdgpu_dm_plane_init(struct amdgpu_display_manager *dm,
    struct drm_plane *plane,
    unsigned long possible_crtcs,
    const struct dc_plane_cap *plane_cap)
{
 uint32_t formats[32];
 int num_formats;
 int res = -EPERM;

 num_formats = get_plane_formats(plane, plane_cap, formats,
     ARRAY_SIZE(formats));

 res = drm_universal_plane_init(dm->adev->ddev, plane, possible_crtcs,
           &dm_plane_funcs, formats, num_formats,
           ((void*)0), plane->type, ((void*)0));
 if (res)
  return res;

 if (plane->type == DRM_PLANE_TYPE_OVERLAY &&
     plane_cap && plane_cap->per_pixel_alpha) {
  unsigned int blend_caps = BIT(DRM_MODE_BLEND_PIXEL_NONE) |
       BIT(DRM_MODE_BLEND_PREMULTI);

  drm_plane_create_alpha_property(plane);
  drm_plane_create_blend_mode_property(plane, blend_caps);
 }

 if (plane->type == DRM_PLANE_TYPE_PRIMARY &&
     plane_cap && plane_cap->pixel_format_support.nv12) {

  drm_plane_create_color_properties(
   plane,
   BIT(DRM_COLOR_YCBCR_BT601) |
   BIT(DRM_COLOR_YCBCR_BT709),
   BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
   BIT(DRM_COLOR_YCBCR_FULL_RANGE),
   DRM_COLOR_YCBCR_BT709, DRM_COLOR_YCBCR_LIMITED_RANGE);
 }

 drm_plane_helper_add(plane, &dm_plane_helper_funcs);


 if (plane->funcs->reset)
  plane->funcs->reset(plane);

 return 0;
}
