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
struct msm_gem_submit {int nr_bos; TYPE_3__* bos; int /*<<< orphan*/  ticket; } ;
struct TYPE_5__ {TYPE_1__* resv; } ;
struct msm_gem_object {TYPE_2__ base; } ;
struct TYPE_6__ {int flags; struct msm_gem_object* obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BO_LOCKED ; 
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (struct msm_gem_submit*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct msm_gem_submit *submit)
{
	int contended, slow_locked = -1, i, ret = 0;

retry:
	for (i = 0; i < submit->nr_bos; i++) {
		struct msm_gem_object *msm_obj = submit->bos[i].obj;

		if (slow_locked == i)
			slow_locked = -1;

		contended = i;

		if (!(submit->bos[i].flags & BO_LOCKED)) {
			ret = FUNC2(&msm_obj->base.resv->lock,
					&submit->ticket);
			if (ret)
				goto fail;
			submit->bos[i].flags |= BO_LOCKED;
		}
	}

	FUNC1(&submit->ticket);

	return 0;

fail:
	for (; i >= 0; i--)
		FUNC0(submit, i, true);

	if (slow_locked > 0)
		FUNC0(submit, slow_locked, true);

	if (ret == -EDEADLK) {
		struct msm_gem_object *msm_obj = submit->bos[contended].obj;
		/* we lost out in a seqno race, lock and retry.. */
		ret = FUNC3(&msm_obj->base.resv->lock,
				&submit->ticket);
		if (!ret) {
			submit->bos[contended].flags |= BO_LOCKED;
			slow_locked = contended;
			goto retry;
		}
	}

	return ret;
}