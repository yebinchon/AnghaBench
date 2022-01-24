#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ deferred_setup; } ;
struct intel_fbdev {int hpd_waiting; TYPE_2__ helper; scalar_t__ vma; int /*<<< orphan*/  hpd_lock; int /*<<< orphan*/  hpd_suspended; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct intel_fbdev* fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_fbdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct drm_device*) ; 

void FUNC5(struct drm_device *dev)
{
	struct intel_fbdev *ifbdev = FUNC4(dev)->fbdev;
	bool send_hpd;

	if (!ifbdev)
		return;

	FUNC1(ifbdev);

	FUNC2(&ifbdev->hpd_lock);
	send_hpd = !ifbdev->hpd_suspended;
	ifbdev->hpd_waiting = true;
	FUNC3(&ifbdev->hpd_lock);

	if (send_hpd && (ifbdev->vma || ifbdev->helper.deferred_setup))
		FUNC0(&ifbdev->helper);
}