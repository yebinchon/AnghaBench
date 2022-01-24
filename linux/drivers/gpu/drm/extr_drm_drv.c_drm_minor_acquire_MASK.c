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
struct drm_minor {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct drm_minor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_minor_lock ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 struct drm_minor* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

struct drm_minor *FUNC7(unsigned int minor_id)
{
	struct drm_minor *minor;
	unsigned long flags;

	FUNC5(&drm_minor_lock, flags);
	minor = FUNC4(&drm_minors_idr, minor_id);
	if (minor)
		FUNC1(minor->dev);
	FUNC6(&drm_minor_lock, flags);

	if (!minor) {
		return FUNC0(-ENODEV);
	} else if (FUNC2(minor->dev)) {
		FUNC3(minor->dev);
		return FUNC0(-ENODEV);
	}

	return minor;
}