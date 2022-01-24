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
struct drm_property_blob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_property_blob*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_property_blob*) ; 

bool FUNC2(struct drm_property_blob **blob,
			       struct drm_property_blob *new_blob)
{
	struct drm_property_blob *old_blob = *blob;

	if (old_blob == new_blob)
		return false;

	FUNC1(old_blob);
	if (new_blob)
		FUNC0(new_blob);
	*blob = new_blob;
	return true;
}