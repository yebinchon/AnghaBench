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
struct intel_fbdev {int hpd_suspended; int hpd_waiting; int /*<<< orphan*/  helper; int /*<<< orphan*/  hpd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FBINFO_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct intel_fbdev *ifbdev, int state)
{
	bool send_hpd = false;

	FUNC2(&ifbdev->hpd_lock);
	ifbdev->hpd_suspended = state == FBINFO_STATE_SUSPENDED;
	send_hpd = !ifbdev->hpd_suspended && ifbdev->hpd_waiting;
	ifbdev->hpd_waiting = false;
	FUNC3(&ifbdev->hpd_lock);

	if (send_hpd) {
		FUNC0("Handling delayed fbcon HPD event\n");
		FUNC1(&ifbdev->helper);
	}
}