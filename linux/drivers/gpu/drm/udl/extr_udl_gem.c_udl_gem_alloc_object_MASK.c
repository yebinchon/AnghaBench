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
struct udl_gem_object {int /*<<< orphan*/  flags; int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UDL_BO_CACHEABLE ; 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct udl_gem_object*) ; 
 struct udl_gem_object* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct udl_gem_object *FUNC3(struct drm_device *dev,
					    size_t size)
{
	struct udl_gem_object *obj;

	obj = FUNC2(sizeof(*obj), GFP_KERNEL);
	if (obj == NULL)
		return NULL;

	if (FUNC0(dev, &obj->base, size) != 0) {
		FUNC1(obj);
		return NULL;
	}

	obj->flags = UDL_BO_CACHEABLE;
	return obj;
}