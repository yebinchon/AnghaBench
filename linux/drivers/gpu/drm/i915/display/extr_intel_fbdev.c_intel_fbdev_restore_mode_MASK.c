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
struct intel_fbdev {int /*<<< orphan*/  helper; int /*<<< orphan*/  vma; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct intel_fbdev* fbdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_fbdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_fbdev*) ; 
 TYPE_1__* FUNC3 (struct drm_device*) ; 

void FUNC4(struct drm_device *dev)
{
	struct intel_fbdev *ifbdev = FUNC3(dev)->fbdev;

	if (!ifbdev)
		return;

	FUNC2(ifbdev);
	if (!ifbdev->vma)
		return;

	if (FUNC0(&ifbdev->helper) == 0)
		FUNC1(ifbdev);
}