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
typedef  scalar_t__ uint64_t ;
typedef  void* uint32_t ;
struct msm_kms {int /*<<< orphan*/  aspace; } ;
struct TYPE_3__ {struct msm_kms base; } ;
struct mdp4_kms {TYPE_1__ base; } ;
struct TYPE_4__ {int stale; int /*<<< orphan*/  lock; void* height; void* width; scalar_t__ next_iova; struct drm_gem_object* next_bo; } ;
struct mdp4_crtc {int /*<<< orphan*/  unref_cursor_work; TYPE_2__ cursor; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 void* CURSOR_HEIGHT ; 
 void* CURSOR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  PENDING_CURSOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct mdp4_kms* FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (struct drm_gem_object*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp4_crtc* FUNC9 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC10(struct drm_crtc *crtc,
		struct drm_file *file_priv, uint32_t handle,
		uint32_t width, uint32_t height)
{
	struct mdp4_crtc *mdp4_crtc = FUNC9(crtc);
	struct mdp4_kms *mdp4_kms = FUNC4(crtc);
	struct msm_kms *kms = &mdp4_kms->base.base;
	struct drm_device *dev = crtc->dev;
	struct drm_gem_object *cursor_bo, *old_bo;
	unsigned long flags;
	uint64_t iova;
	int ret;

	if ((width > CURSOR_WIDTH) || (height > CURSOR_HEIGHT)) {
		FUNC0(dev->dev, "bad cursor size: %dx%d\n", width, height);
		return -EINVAL;
	}

	if (handle) {
		cursor_bo = FUNC2(file_priv, handle);
		if (!cursor_bo)
			return -ENOENT;
	} else {
		cursor_bo = NULL;
	}

	if (cursor_bo) {
		ret = FUNC5(cursor_bo, kms->aspace, &iova);
		if (ret)
			goto fail;
	} else {
		iova = 0;
	}

	FUNC7(&mdp4_crtc->cursor.lock, flags);
	old_bo = mdp4_crtc->cursor.next_bo;
	mdp4_crtc->cursor.next_bo   = cursor_bo;
	mdp4_crtc->cursor.next_iova = iova;
	mdp4_crtc->cursor.width     = width;
	mdp4_crtc->cursor.height    = height;
	mdp4_crtc->cursor.stale     = true;
	FUNC8(&mdp4_crtc->cursor.lock, flags);

	if (old_bo) {
		/* drop our previous reference: */
		FUNC1(&mdp4_crtc->unref_cursor_work, old_bo);
	}

	FUNC6(crtc, PENDING_CURSOR);

	return 0;

fail:
	FUNC3(cursor_bo);
	return ret;
}