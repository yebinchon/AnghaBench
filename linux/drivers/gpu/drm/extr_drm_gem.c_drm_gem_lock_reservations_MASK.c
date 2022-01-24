#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ww_acquire_ctx {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; } ;

/* Variables and functions */
 int EDEADLK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reservation_ww_class ; 
 int /*<<< orphan*/  FUNC3 (struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ww_acquire_ctx*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct drm_gem_object **objs, int count,
			  struct ww_acquire_ctx *acquire_ctx)
{
	int contended = -1;
	int i, ret;

	FUNC4(acquire_ctx, &reservation_ww_class);

retry:
	if (contended != -1) {
		struct drm_gem_object *obj = objs[contended];

		ret = FUNC1(obj->resv,
								 acquire_ctx);
		if (ret) {
			FUNC3(acquire_ctx);
			return ret;
		}
	}

	for (i = 0; i < count; i++) {
		if (i == contended)
			continue;

		ret = FUNC0(objs[i]->resv,
							    acquire_ctx);
		if (ret) {
			int j;

			for (j = 0; j < i; j++)
				FUNC2(objs[j]->resv);

			if (contended != -1 && contended >= i)
				FUNC2(objs[contended]->resv);

			if (ret == -EDEADLK) {
				contended = i;
				goto retry;
			}

			FUNC3(acquire_ctx);
			return ret;
		}
	}

	FUNC3(acquire_ctx);

	return 0;
}