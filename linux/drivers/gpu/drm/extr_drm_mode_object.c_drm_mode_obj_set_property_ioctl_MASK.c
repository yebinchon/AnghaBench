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
struct drm_property {int /*<<< orphan*/  dev; } ;
struct drm_mode_object {int /*<<< orphan*/  properties; } ;
struct drm_mode_obj_set_property {int /*<<< orphan*/  value; int /*<<< orphan*/  prop_id; int /*<<< orphan*/  obj_type; int /*<<< orphan*/  obj_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC2 (struct drm_mode_object*,int /*<<< orphan*/ ) ; 
 struct drm_mode_object* FUNC3 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mode_object*) ; 
 int FUNC5 (struct drm_mode_object*,struct drm_file*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, void *data,
				    struct drm_file *file_priv)
{
	struct drm_mode_obj_set_property *arg = data;
	struct drm_mode_object *arg_obj;
	struct drm_property *property;
	int ret = -EINVAL;

	if (!FUNC0(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	arg_obj = FUNC3(dev, file_priv, arg->obj_id, arg->obj_type);
	if (!arg_obj)
		return -ENOENT;

	if (!arg_obj->properties)
		goto out_unref;

	property = FUNC2(arg_obj, arg->prop_id);
	if (!property)
		goto out_unref;

	if (FUNC1(property->dev))
		ret = FUNC5(arg_obj, file_priv, property, arg->value);
	else
		ret = FUNC6(arg_obj, property, arg->value);

out_unref:
	FUNC4(arg_obj);
	return ret;
}