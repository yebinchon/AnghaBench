
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int num_shared; int head; TYPE_2__* bo; } ;
struct list_head {int dummy; } ;
struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_plane {scalar_t__ type; struct drm_plane_state* state; } ;
struct drm_gem_object {int dummy; } ;
struct dm_plane_state {struct dc_plane_state* dc_state; } ;
struct dc_plane_state {int address; int dcc; int plane_size; int tiling_info; int rotation; int format; } ;
struct amdgpu_framebuffer {int address; } ;
struct amdgpu_device {int dev; } ;
struct TYPE_4__ {int bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; int flags; } ;
struct TYPE_3__ {struct drm_gem_object** obj; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,...) ;
 scalar_t__ DRM_PLANE_TYPE_CURSOR ;
 int ERESTARTSYS ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int amdgpu_bo_get_tiling_flags (struct amdgpu_bo*,int *) ;
 int amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_ref (struct amdgpu_bo*) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_display_supported_domains (struct amdgpu_device*,int ) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_ttm_alloc_gart (TYPE_2__*) ;
 int dev_err (int ,char*,int) ;
 int fill_plane_buffer_attributes (struct amdgpu_device*,struct amdgpu_framebuffer*,int ,int ,int ,int *,int *,int *,int *) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int list_add (int *,struct list_head*) ;
 struct amdgpu_framebuffer* to_amdgpu_framebuffer (TYPE_1__*) ;
 struct dm_plane_state* to_dm_plane_state (struct drm_plane_state*) ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;
 int ttm_eu_reserve_buffers (struct ww_acquire_ctx*,struct list_head*,int,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_plane_helper_prepare_fb(struct drm_plane *plane,
          struct drm_plane_state *new_state)
{
 struct amdgpu_framebuffer *afb;
 struct drm_gem_object *obj;
 struct amdgpu_device *adev;
 struct amdgpu_bo *rbo;
 struct dm_plane_state *dm_plane_state_new, *dm_plane_state_old;
 struct list_head list;
 struct ttm_validate_buffer tv;
 struct ww_acquire_ctx ticket;
 uint64_t tiling_flags;
 uint32_t domain;
 int r;

 dm_plane_state_old = to_dm_plane_state(plane->state);
 dm_plane_state_new = to_dm_plane_state(new_state);

 if (!new_state->fb) {
  DRM_DEBUG_DRIVER("No FB bound\n");
  return 0;
 }

 afb = to_amdgpu_framebuffer(new_state->fb);
 obj = new_state->fb->obj[0];
 rbo = gem_to_amdgpu_bo(obj);
 adev = amdgpu_ttm_adev(rbo->tbo.bdev);
 INIT_LIST_HEAD(&list);

 tv.bo = &rbo->tbo;
 tv.num_shared = 1;
 list_add(&tv.head, &list);

 r = ttm_eu_reserve_buffers(&ticket, &list, 0, ((void*)0), 1);
 if (r) {
  dev_err(adev->dev, "fail to reserve bo (%d)\n", r);
  return r;
 }

 if (plane->type != DRM_PLANE_TYPE_CURSOR)
  domain = amdgpu_display_supported_domains(adev, rbo->flags);
 else
  domain = AMDGPU_GEM_DOMAIN_VRAM;

 r = amdgpu_bo_pin(rbo, domain);
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS)
   DRM_ERROR("Failed to pin framebuffer with error %d\n", r);
  ttm_eu_backoff_reservation(&ticket, &list);
  return r;
 }

 r = amdgpu_ttm_alloc_gart(&rbo->tbo);
 if (unlikely(r != 0)) {
  amdgpu_bo_unpin(rbo);
  ttm_eu_backoff_reservation(&ticket, &list);
  DRM_ERROR("%p bind failed\n", rbo);
  return r;
 }

 amdgpu_bo_get_tiling_flags(rbo, &tiling_flags);

 ttm_eu_backoff_reservation(&ticket, &list);

 afb->address = amdgpu_bo_gpu_offset(rbo);

 amdgpu_bo_ref(rbo);

 if (dm_plane_state_new->dc_state &&
   dm_plane_state_old->dc_state != dm_plane_state_new->dc_state) {
  struct dc_plane_state *plane_state = dm_plane_state_new->dc_state;

  fill_plane_buffer_attributes(
   adev, afb, plane_state->format, plane_state->rotation,
   tiling_flags, &plane_state->tiling_info,
   &plane_state->plane_size, &plane_state->dcc,
   &plane_state->address);
 }

 return 0;
}
