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
struct drm_property {int dummy; } ;
struct drm_mode_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_PROP_BLOB ; 
 int /*<<< orphan*/  DRM_MODE_PROP_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mode_object*) ; 

void FUNC4(struct drm_property *property,
		struct drm_mode_object *ref)
{
	if (!ref)
		return;

	if (FUNC2(property, DRM_MODE_PROP_OBJECT)) {
		FUNC0(ref);
	} else if (FUNC2(property, DRM_MODE_PROP_BLOB))
		FUNC1(FUNC3(ref));
}