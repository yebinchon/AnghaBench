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
typedef  scalar_t__ uint32_t ;
struct vc4_exec_info {scalar_t__ last_ct0ca; scalar_t__ last_ct1ca; } ;
struct TYPE_3__ {int /*<<< orphan*/  reset_work; } ;
struct vc4_dev {TYPE_1__ hangcheck; int /*<<< orphan*/  job_lock; struct drm_device* dev; } ;
struct timer_list {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__ hangcheck ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_dev* vc4 ; 
 struct vc4_exec_info* FUNC6 (struct vc4_dev*) ; 
 struct vc4_exec_info* FUNC7 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC9(struct timer_list *t)
{
	struct vc4_dev *vc4 = FUNC2(vc4, t, hangcheck.timer);
	struct drm_device *dev = vc4->dev;
	uint32_t ct0ca, ct1ca;
	unsigned long irqflags;
	struct vc4_exec_info *bin_exec, *render_exec;

	FUNC4(&vc4->job_lock, irqflags);

	bin_exec = FUNC6(vc4);
	render_exec = FUNC7(vc4);

	/* If idle, we can stop watching for hangs. */
	if (!bin_exec && !render_exec) {
		FUNC5(&vc4->job_lock, irqflags);
		return;
	}

	ct0ca = FUNC1(FUNC0(0));
	ct1ca = FUNC1(FUNC0(1));

	/* If we've made any progress in execution, rearm the timer
	 * and wait.
	 */
	if ((bin_exec && ct0ca != bin_exec->last_ct0ca) ||
	    (render_exec && ct1ca != render_exec->last_ct1ca)) {
		if (bin_exec)
			bin_exec->last_ct0ca = ct0ca;
		if (render_exec)
			render_exec->last_ct1ca = ct1ca;
		FUNC5(&vc4->job_lock, irqflags);
		FUNC8(dev);
		return;
	}

	FUNC5(&vc4->job_lock, irqflags);

	/* We've gone too long with no progress, reset.  This has to
	 * be done from a work struct, since resetting can sleep and
	 * this timer hook isn't allowed to.
	 */
	FUNC3(&vc4->hangcheck.reset_work);
}