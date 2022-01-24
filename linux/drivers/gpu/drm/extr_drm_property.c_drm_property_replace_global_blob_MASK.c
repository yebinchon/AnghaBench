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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_property_blob {TYPE_1__ base; } ;
struct drm_property {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_property_blob*) ; 
 int FUNC1 (struct drm_property_blob*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC5 (struct drm_device*,size_t,void const*) ; 

int FUNC6(struct drm_device *dev,
				     struct drm_property_blob **replace,
				     size_t length,
				     const void *data,
				     struct drm_mode_object *obj_holds_id,
				     struct drm_property *prop_holds_id)
{
	struct drm_property_blob *new_blob = NULL;
	struct drm_property_blob *old_blob = NULL;
	int ret;

	FUNC2(replace == NULL);

	old_blob = *replace;

	if (length && data) {
		new_blob = FUNC5(dev, length, data);
		if (FUNC0(new_blob))
			return FUNC1(new_blob);
	}

	if (obj_holds_id) {
		ret = FUNC3(obj_holds_id,
						    prop_holds_id,
						    new_blob ?
						        new_blob->base.id : 0);
		if (ret != 0)
			goto err_created;
	}

	FUNC4(old_blob);
	*replace = new_blob;

	return 0;

err_created:
	FUNC4(new_blob);
	return ret;
}