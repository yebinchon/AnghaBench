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
struct edac_device_ctl_info {unsigned long poll_msec; unsigned long delay; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 

void FUNC3(struct edac_device_ctl_info *edac_dev,
					unsigned long value)
{
	unsigned long jiffs = FUNC1(value);

	if (value == 1000)
		jiffs = FUNC2(value);

	edac_dev->poll_msec = value;
	edac_dev->delay	    = jiffs;

	FUNC0(&edac_dev->work, jiffs);
}