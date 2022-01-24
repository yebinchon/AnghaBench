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
struct drm_gem_object {scalar_t__ handle_count; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	bool final = false;

	if (FUNC0(obj->handle_count == 0))
		return;

	/*
	* Must bump handle count first as this may be the last
	* ref, in which case the object would disappear before we
	* checked for a name
	*/

	FUNC4(&dev->object_name_lock);
	if (--obj->handle_count == 0) {
		FUNC2(obj);
		FUNC1(obj);
		final = true;
	}
	FUNC5(&dev->object_name_lock);

	if (final)
		FUNC3(obj);
}