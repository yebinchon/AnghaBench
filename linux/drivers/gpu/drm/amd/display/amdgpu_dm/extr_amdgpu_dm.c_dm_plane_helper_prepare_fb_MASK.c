#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int num_shared; int /*<<< orphan*/  head; TYPE_2__* bo; } ;
struct list_head {int dummy; } ;
struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_plane {scalar_t__ type; struct drm_plane_state* state; } ;
struct drm_gem_object {int dummy; } ;
struct dm_plane_state {struct dc_plane_state* dc_state; } ;
struct dc_plane_state {int /*<<< orphan*/  address; int /*<<< orphan*/  dcc; int /*<<< orphan*/  plane_size; int /*<<< orphan*/  tiling_info; int /*<<< orphan*/  rotation; int /*<<< orphan*/  format; } ;
struct amdgpu_framebuffer {int /*<<< orphan*/  address; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct drm_gem_object** obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ DRM_PLANE_TYPE_CURSOR ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int FUNC5 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*,struct amdgpu_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct amdgpu_bo* FUNC13 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct amdgpu_framebuffer* FUNC15 (TYPE_1__*) ; 
 struct dm_plane_state* FUNC16 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC18 (struct ww_acquire_ctx*,struct list_head*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct drm_plane *plane,
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

	dm_plane_state_old = FUNC16(plane->state);
	dm_plane_state_new = FUNC16(new_state);

	if (!new_state->fb) {
		FUNC0("No FB bound\n");
		return 0;
	}

	afb = FUNC15(new_state->fb);
	obj = new_state->fb->obj[0];
	rbo = FUNC13(obj);
	adev = FUNC9(rbo->tbo.bdev);
	FUNC2(&list);

	tv.bo = &rbo->tbo;
	tv.num_shared = 1;
	FUNC14(&tv.head, &list);

	r = FUNC18(&ticket, &list, false, NULL, true);
	if (r) {
		FUNC11(adev->dev, "fail to reserve bo (%d)\n", r);
		return r;
	}

	if (plane->type != DRM_PLANE_TYPE_CURSOR)
		domain = FUNC8(adev, rbo->flags);
	else
		domain = AMDGPU_GEM_DOMAIN_VRAM;

	r = FUNC5(rbo, domain);
	if (FUNC19(r != 0)) {
		if (r != -ERESTARTSYS)
			FUNC1("Failed to pin framebuffer with error %d\n", r);
		FUNC17(&ticket, &list);
		return r;
	}

	r = FUNC10(&rbo->tbo);
	if (FUNC19(r != 0)) {
		FUNC7(rbo);
		FUNC17(&ticket, &list);
		FUNC1("%p bind failed\n", rbo);
		return r;
	}

	FUNC3(rbo, &tiling_flags);

	FUNC17(&ticket, &list);

	afb->address = FUNC4(rbo);

	FUNC6(rbo);

	if (dm_plane_state_new->dc_state &&
			dm_plane_state_old->dc_state != dm_plane_state_new->dc_state) {
		struct dc_plane_state *plane_state = dm_plane_state_new->dc_state;

		FUNC12(
			adev, afb, plane_state->format, plane_state->rotation,
			tiling_flags, &plane_state->tiling_info,
			&plane_state->plane_size, &plane_state->dcc,
			&plane_state->address);
	}

	return 0;
}