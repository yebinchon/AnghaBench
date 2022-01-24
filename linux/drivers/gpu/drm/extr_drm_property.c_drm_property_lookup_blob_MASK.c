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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_property_blob {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_BLOB ; 
 struct drm_mode_object* FUNC0 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_property_blob* FUNC1 (struct drm_mode_object*) ; 

struct drm_property_blob *FUNC2(struct drm_device *dev,
					           uint32_t id)
{
	struct drm_mode_object *obj;
	struct drm_property_blob *blob = NULL;

	obj = FUNC0(dev, NULL, id, DRM_MODE_OBJECT_BLOB);
	if (obj)
		blob = FUNC1(obj);
	return blob;
}