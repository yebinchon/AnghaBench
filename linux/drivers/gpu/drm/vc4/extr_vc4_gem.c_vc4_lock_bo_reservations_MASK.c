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
struct ww_acquire_ctx {int dummy; } ;
struct vc4_exec_info {int bo_count; TYPE_1__** bo; } ;
struct drm_gem_object {TYPE_2__* resv; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;

/* Variables and functions */
 int EDEADLK ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  reservation_ww_class ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ww_acquire_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct drm_device *dev,
			 struct vc4_exec_info *exec,
			 struct ww_acquire_ctx *acquire_ctx)
{
	int contended_lock = -1;
	int i, ret;
	struct drm_gem_object *bo;

	FUNC3(acquire_ctx, &reservation_ww_class);

retry:
	if (contended_lock != -1) {
		bo = &exec->bo[contended_lock]->base;
		ret = FUNC5(&bo->resv->lock,
						       acquire_ctx);
		if (ret) {
			FUNC2(acquire_ctx);
			return ret;
		}
	}

	for (i = 0; i < exec->bo_count; i++) {
		if (i == contended_lock)
			continue;

		bo = &exec->bo[i]->base;

		ret = FUNC4(&bo->resv->lock, acquire_ctx);
		if (ret) {
			int j;

			for (j = 0; j < i; j++) {
				bo = &exec->bo[j]->base;
				FUNC6(&bo->resv->lock);
			}

			if (contended_lock != -1 && contended_lock >= i) {
				bo = &exec->bo[contended_lock]->base;

				FUNC6(&bo->resv->lock);
			}

			if (ret == -EDEADLK) {
				contended_lock = i;
				goto retry;
			}

			FUNC2(acquire_ctx);
			return ret;
		}
	}

	FUNC2(acquire_ctx);

	/* Reserve space for our shared (read-only) fence references,
	 * before we commit the CL to the hardware.
	 */
	for (i = 0; i < exec->bo_count; i++) {
		bo = &exec->bo[i]->base;

		ret = FUNC0(bo->resv, 1);
		if (ret) {
			FUNC1(dev, exec, acquire_ctx);
			return ret;
		}
	}

	return 0;
}