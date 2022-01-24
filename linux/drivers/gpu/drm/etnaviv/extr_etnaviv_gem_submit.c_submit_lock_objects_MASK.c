#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ww_acquire_ctx {int dummy; } ;
struct etnaviv_gem_submit {int nr_bos; TYPE_3__* bos; } ;
struct drm_gem_object {TYPE_2__* resv; } ;
struct TYPE_6__ {int flags; TYPE_1__* obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;

/* Variables and functions */
 int BO_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EALREADY ; 
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gem_submit*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ww_acquire_ctx*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 

__attribute__((used)) static int FUNC5(struct etnaviv_gem_submit *submit,
		struct ww_acquire_ctx *ticket)
{
	int contended, slow_locked = -1, i, ret = 0;

retry:
	for (i = 0; i < submit->nr_bos; i++) {
		struct drm_gem_object *obj = &submit->bos[i].obj->base;

		if (slow_locked == i)
			slow_locked = -1;

		contended = i;

		if (!(submit->bos[i].flags & BO_LOCKED)) {
			ret = FUNC3(&obj->resv->lock,
							  ticket);
			if (ret == -EALREADY)
				FUNC0("BO at index %u already on submit list\n",
					  i);
			if (ret)
				goto fail;
			submit->bos[i].flags |= BO_LOCKED;
		}
	}

	FUNC2(ticket);

	return 0;

fail:
	for (; i >= 0; i--)
		FUNC1(submit, i);

	if (slow_locked > 0)
		FUNC1(submit, slow_locked);

	if (ret == -EDEADLK) {
		struct drm_gem_object *obj;

		obj = &submit->bos[contended].obj->base;

		/* we lost out in a seqno race, lock and retry.. */
		ret = FUNC4(&obj->resv->lock,
						       ticket);
		if (!ret) {
			submit->bos[contended].flags |= BO_LOCKED;
			slow_locked = contended;
			goto retry;
		}
	}

	return ret;
}