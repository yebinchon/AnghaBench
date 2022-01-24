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
struct edac_device_ctl_info {unsigned int poll_msec; int /*<<< orphan*/  delay; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  edac_device_workq_function ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct edac_device_ctl_info *edac_dev,
				    unsigned msec)
{
	FUNC1(0, "\n");

	/* take the arg 'msec' and set it into the control structure
	 * to used in the time period calculation
	 * then calc the number of jiffies that represents
	 */
	edac_dev->poll_msec = msec;
	edac_dev->delay = FUNC3(msec);

	FUNC0(&edac_dev->work, edac_device_workq_function);

	/* optimize here for the 1 second case, which will be normal value, to
	 * fire ON the 1 second time event. This helps reduce all sorts of
	 * timers firing on sub-second basis, while they are happy
	 * to fire together on the 1 second exactly
	 */
	if (edac_dev->poll_msec == 1000)
		FUNC2(&edac_dev->work, FUNC4(edac_dev->delay));
	else
		FUNC2(&edac_dev->work, edac_dev->delay);
}