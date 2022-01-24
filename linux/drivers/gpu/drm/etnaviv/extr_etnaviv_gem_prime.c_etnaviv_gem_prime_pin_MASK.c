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
struct etnaviv_gem_object {int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int /*<<< orphan*/  import_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct etnaviv_gem_object* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_gem_object *obj)
{
	if (!obj->import_attach) {
		struct etnaviv_gem_object *etnaviv_obj = FUNC3(obj);

		FUNC1(&etnaviv_obj->lock);
		FUNC0(etnaviv_obj);
		FUNC2(&etnaviv_obj->lock);
	}
	return 0;
}