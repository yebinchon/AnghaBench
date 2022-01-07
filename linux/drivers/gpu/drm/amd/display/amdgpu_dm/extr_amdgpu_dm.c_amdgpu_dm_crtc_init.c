
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_18__ {int enabled; TYPE_1__* funcs; } ;
struct drm_plane {size_t crtc_id; int otg_inst; TYPE_7__ base; int max_cursor_height; int max_cursor_width; int type; } ;
struct amdgpu_display_manager {TYPE_6__* adev; int ddev; } ;
struct amdgpu_crtc {size_t crtc_id; int otg_inst; TYPE_7__ base; int max_cursor_height; int max_cursor_width; int type; } ;
struct TYPE_16__ {struct drm_plane** crtcs; } ;
struct TYPE_15__ {TYPE_3__* dc; } ;
struct TYPE_17__ {TYPE_5__ mode_info; TYPE_4__ dm; } ;
struct TYPE_13__ {int max_cursor_size; } ;
struct TYPE_14__ {TYPE_2__ caps; } ;
struct TYPE_12__ {int (* reset ) (TYPE_7__*) ;} ;


 int DRM_PLANE_TYPE_CURSOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_COLOR_LEGACY_LUT_ENTRIES ;
 int MAX_COLOR_LUT_ENTRIES ;
 int amdgpu_dm_crtc_funcs ;
 int amdgpu_dm_crtc_helper_funcs ;
 int amdgpu_dm_plane_init (struct amdgpu_display_manager*,struct drm_plane*,int ,int *) ;
 int drm_crtc_enable_color_mgmt (TYPE_7__*,int ,int,int ) ;
 int drm_crtc_helper_add (TYPE_7__*,int *) ;
 int drm_crtc_init_with_planes (int ,TYPE_7__*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (TYPE_7__*,int ) ;
 int kfree (struct drm_plane*) ;
 struct drm_plane* kzalloc (int,int ) ;
 int stub1 (TYPE_7__*) ;

__attribute__((used)) static int amdgpu_dm_crtc_init(struct amdgpu_display_manager *dm,
          struct drm_plane *plane,
          uint32_t crtc_index)
{
 struct amdgpu_crtc *acrtc = ((void*)0);
 struct drm_plane *cursor_plane;

 int res = -ENOMEM;

 cursor_plane = kzalloc(sizeof(*cursor_plane), GFP_KERNEL);
 if (!cursor_plane)
  goto fail;

 cursor_plane->type = DRM_PLANE_TYPE_CURSOR;
 res = amdgpu_dm_plane_init(dm, cursor_plane, 0, ((void*)0));

 acrtc = kzalloc(sizeof(struct amdgpu_crtc), GFP_KERNEL);
 if (!acrtc)
  goto fail;

 res = drm_crtc_init_with_planes(
   dm->ddev,
   &acrtc->base,
   plane,
   cursor_plane,
   &amdgpu_dm_crtc_funcs, ((void*)0));

 if (res)
  goto fail;

 drm_crtc_helper_add(&acrtc->base, &amdgpu_dm_crtc_helper_funcs);


 if (acrtc->base.funcs->reset)
  acrtc->base.funcs->reset(&acrtc->base);

 acrtc->max_cursor_width = dm->adev->dm.dc->caps.max_cursor_size;
 acrtc->max_cursor_height = dm->adev->dm.dc->caps.max_cursor_size;

 acrtc->crtc_id = crtc_index;
 acrtc->base.enabled = 0;
 acrtc->otg_inst = -1;

 dm->adev->mode_info.crtcs[crtc_index] = acrtc;
 drm_crtc_enable_color_mgmt(&acrtc->base, MAX_COLOR_LUT_ENTRIES,
       1, MAX_COLOR_LUT_ENTRIES);
 drm_mode_crtc_set_gamma_size(&acrtc->base, MAX_COLOR_LEGACY_LUT_ENTRIES);

 return 0;

fail:
 kfree(acrtc);
 kfree(cursor_plane);
 return res;
}
