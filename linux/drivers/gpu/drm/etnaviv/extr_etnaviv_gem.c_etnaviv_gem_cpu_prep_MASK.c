#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct timespec {int dummy; } ;
struct etnaviv_gem_object {int flags; int last_cpu_prep_op; TYPE_1__* sgt; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int ETNA_BO_CACHED ; 
 int ETNA_PREP_NOSYNC ; 
 int ETNA_PREP_WRITE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned long FUNC7 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct etnaviv_gem_object* FUNC10 (struct drm_gem_object*) ; 

int FUNC11(struct drm_gem_object *obj, u32 op,
		struct timespec *timeout)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC10(obj);
	struct drm_device *dev = obj->dev;
	bool write = !!(op & ETNA_PREP_WRITE);
	int ret;

	if (!etnaviv_obj->sgt) {
		void *ret;

		FUNC8(&etnaviv_obj->lock);
		ret = FUNC5(etnaviv_obj);
		FUNC9(&etnaviv_obj->lock);
		if (FUNC0(ret))
			return FUNC1(ret);
	}

	if (op & ETNA_PREP_NOSYNC) {
		if (!FUNC2(obj->resv,
							  write))
			return -EBUSY;
	} else {
		unsigned long remain = FUNC7(timeout);

		ret = FUNC3(obj->resv,
							  write, true, remain);
		if (ret <= 0)
			return ret == 0 ? -ETIMEDOUT : ret;
	}

	if (etnaviv_obj->flags & ETNA_BO_CACHED) {
		FUNC4(dev->dev, etnaviv_obj->sgt->sgl,
				    etnaviv_obj->sgt->nents,
				    FUNC6(op));
		etnaviv_obj->last_cpu_prep_op = op;
	}

	return 0;
}