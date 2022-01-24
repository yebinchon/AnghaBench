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
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_property {struct drm_device* dev; } ;
struct drm_mode_object {int type; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
#define  DRM_MODE_OBJECT_CONNECTOR 130 
#define  DRM_MODE_OBJECT_CRTC 129 
#define  DRM_MODE_OBJECT_PLANE 128 
 int EINVAL ; 
 int FUNC0 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_property*,int /*<<< orphan*/ ,struct drm_mode_object**) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_property*,struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_mode_object*) ; 

__attribute__((used)) static int FUNC8(struct drm_mode_object *obj,
			       struct drm_property *prop,
			       uint64_t prop_value)
{
	struct drm_device *dev = prop->dev;
	struct drm_mode_object *ref;
	int ret = -EINVAL;

	if (!FUNC5(prop, prop_value, &ref))
		return -EINVAL;

	FUNC3(dev);
	switch (obj->type) {
	case DRM_MODE_OBJECT_CONNECTOR:
		ret = FUNC0(obj, prop, prop_value);
		break;
	case DRM_MODE_OBJECT_CRTC:
		ret = FUNC1(obj, prop, prop_value);
		break;
	case DRM_MODE_OBJECT_PLANE:
		ret = FUNC2(FUNC7(obj),
						  prop, prop_value);
		break;
	}
	FUNC6(prop, ref);
	FUNC4(dev);

	return ret;
}