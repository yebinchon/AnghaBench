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
struct cpuidle_state {int flags; int (* enter ) (struct cpuidle_device*,struct cpuidle_driver*,int) ;} ;
struct cpuidle_driver {struct cpuidle_state* states; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int CPUIDLE_FLAG_TIMER_STOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct cpuidle_device *dev,
		       struct cpuidle_driver *drv, int index)
{
	struct cpuidle_state *state = &drv->states[index];
	bool broadcast = state->flags & CPUIDLE_FLAG_TIMER_STOP;
	int ret;

	FUNC0();

	if (broadcast) {
		/*
		 * The local timer will be shut down, we need to enter tick
		 * broadcast.
		 */
		ret = FUNC4();
		if (ret) {
			/*
			 * In the absence of hardware broadcast mechanism,
			 * this CPU might be used to broadcast wakeups, which
			 * may be why entering tick broadcast has failed.
			 * There is little the kernel can do to work around
			 * that, so enter WFI instead (idle state 0).
			 */
			FUNC2();
			ret = 0;
			goto out_arch_exit;
		}
	}

	ret = state->enter(dev, drv, index);

	if (broadcast)
		FUNC5();

out_arch_exit:
	FUNC1();

	return ret;
}