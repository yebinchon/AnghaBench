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
struct vc4_bo {scalar_t__ validated_shader; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct drm_gem_object*) ; 
 struct vc4_bo* FUNC3 (struct drm_gem_object*) ; 

void *FUNC4(struct drm_gem_object *obj)
{
	struct vc4_bo *bo = FUNC3(obj);

	if (bo->validated_shader) {
		FUNC0("mmaping of shader BOs not allowed.\n");
		return FUNC1(-EINVAL);
	}

	return FUNC2(obj);
}