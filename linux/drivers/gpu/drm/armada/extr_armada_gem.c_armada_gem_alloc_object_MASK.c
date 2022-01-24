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
struct drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* filp; } ;
struct armada_gem_object {TYPE_2__ obj; } ;
struct address_space {int dummy; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct armada_gem_object*,size_t) ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int __GFP_RECLAIMABLE ; 
 scalar_t__ FUNC1 (struct drm_device*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct armada_gem_object*) ; 
 struct armada_gem_object* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int) ; 
 size_t FUNC5 (size_t) ; 

__attribute__((used)) static struct armada_gem_object *FUNC6(struct drm_device *dev,
	size_t size)
{
	struct armada_gem_object *obj;
	struct address_space *mapping;

	size = FUNC5(size);

	obj = FUNC3(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return NULL;

	if (FUNC1(dev, &obj->obj, size)) {
		FUNC2(obj);
		return NULL;
	}

	mapping = obj->obj.filp->f_mapping;
	FUNC4(mapping, GFP_HIGHUSER | __GFP_RECLAIMABLE);

	FUNC0("alloc obj %p size %zu\n", obj, size);

	return obj;
}