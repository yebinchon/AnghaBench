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
struct work_struct {int dummy; } ;
struct edac_device_ctl_info {scalar_t__ op_state; int poll_msec; int /*<<< orphan*/  delay; int /*<<< orphan*/  work; int /*<<< orphan*/  (* edac_check ) (struct edac_device_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 scalar_t__ OP_OFFLINE ; 
 scalar_t__ OP_RUNNING_POLL ; 
 int /*<<< orphan*/  device_ctls_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edac_device_ctl_info*) ; 
 struct delayed_work* FUNC5 (struct work_struct*) ; 
 struct edac_device_ctl_info* FUNC6 (struct delayed_work*) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work_req)
{
	struct delayed_work *d_work = FUNC5(work_req);
	struct edac_device_ctl_info *edac_dev = FUNC6(d_work);

	FUNC1(&device_ctls_mutex);

	/* If we are being removed, bail out immediately */
	if (edac_dev->op_state == OP_OFFLINE) {
		FUNC2(&device_ctls_mutex);
		return;
	}

	/* Only poll controllers that are running polled and have a check */
	if ((edac_dev->op_state == OP_RUNNING_POLL) &&
		(edac_dev->edac_check != NULL)) {
			edac_dev->edac_check(edac_dev);
	}

	FUNC2(&device_ctls_mutex);

	/* Reschedule the workq for the next time period to start again
	 * if the number of msec is for 1 sec, then adjust to the next
	 * whole one second to save timers firing all over the period
	 * between integral seconds
	 */
	if (edac_dev->poll_msec == 1000)
		FUNC0(&edac_dev->work, FUNC3(edac_dev->delay));
	else
		FUNC0(&edac_dev->work, edac_dev->delay);
}