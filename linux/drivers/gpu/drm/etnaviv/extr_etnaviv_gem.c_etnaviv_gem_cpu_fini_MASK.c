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
struct etnaviv_gem_object {int flags; scalar_t__ last_cpu_prep_op; TYPE_1__* sgt; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int ETNA_BO_CACHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct etnaviv_gem_object* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct etnaviv_gem_object *etnaviv_obj = FUNC3(obj);

	if (etnaviv_obj->flags & ETNA_BO_CACHED) {
		/* fini without a prep is almost certainly a userspace error */
		FUNC0(etnaviv_obj->last_cpu_prep_op == 0);
		FUNC1(dev->dev, etnaviv_obj->sgt->sgl,
			etnaviv_obj->sgt->nents,
			FUNC2(etnaviv_obj->last_cpu_prep_op));
		etnaviv_obj->last_cpu_prep_op = 0;
	}

	return 0;
}