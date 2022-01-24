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
struct drm_minor {int /*<<< orphan*/  index; int /*<<< orphan*/  kdev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct drm_minor** FUNC0 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  drm_minor_lock ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, unsigned int type)
{
	struct drm_minor **slot, *minor;
	unsigned long flags;

	slot = FUNC0(dev, type);
	minor = *slot;
	if (!minor)
		return;

	FUNC3(minor->kdev);

	FUNC4(&drm_minor_lock, flags);
	FUNC1(&drm_minors_idr, minor->index);
	FUNC5(&drm_minor_lock, flags);

	FUNC2(minor);
	*slot = NULL;
}