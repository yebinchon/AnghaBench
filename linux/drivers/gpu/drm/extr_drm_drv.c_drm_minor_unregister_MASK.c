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
struct drm_minor {int /*<<< orphan*/  kdev; int /*<<< orphan*/  index; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_minor*) ; 
 struct drm_minor** FUNC4 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  drm_minor_lock ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev, unsigned int type)
{
	struct drm_minor *minor;
	unsigned long flags;

	minor = *FUNC4(dev, type);
	if (!minor || !FUNC2(minor->kdev))
		return;

	/* replace @minor with NULL so lookups will fail from now on */
	FUNC6(&drm_minor_lock, flags);
	FUNC5(&drm_minors_idr, NULL, minor->index);
	FUNC7(&drm_minor_lock, flags);

	FUNC1(minor->kdev);
	FUNC0(minor->kdev, NULL); /* safety belt */
	FUNC3(minor);
}