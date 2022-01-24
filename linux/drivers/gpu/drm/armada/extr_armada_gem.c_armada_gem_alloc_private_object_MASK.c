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
struct drm_device {int dummy; } ;
struct armada_gem_object {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct armada_gem_object*,size_t) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,size_t) ; 
 struct armada_gem_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t) ; 

struct armada_gem_object *
FUNC4(struct drm_device *dev, size_t size)
{
	struct armada_gem_object *obj;

	size = FUNC3(size);

	obj = FUNC2(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return NULL;

	FUNC1(dev, &obj->obj, size);

	FUNC0("alloc private obj %p size %zu\n", obj, size);

	return obj;
}