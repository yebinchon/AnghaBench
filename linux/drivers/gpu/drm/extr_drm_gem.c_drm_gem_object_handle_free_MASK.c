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
struct drm_gem_object {int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  object_name_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;

	/* Remove any name for this object */
	if (obj->name) {
		FUNC0(&dev->object_name_idr, obj->name);
		obj->name = 0;
	}
}