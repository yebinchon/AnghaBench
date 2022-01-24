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
struct ishtp_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int WAIT_FOR_FW_RDY ; 
 int WAIT_FOR_INPUT_RDY ; 
 int FUNC0 (struct ishtp_device*) ; 
 int FUNC1 (struct ishtp_device*) ; 
 unsigned long FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct ishtp_device *dev, int condition,
				unsigned int timeinc, unsigned int timeout)
{
	bool complete = false;
	int ret;

	do {
		if (condition == WAIT_FOR_FW_RDY) {
			complete = FUNC1(dev);
		} else if (condition == WAIT_FOR_INPUT_RDY) {
			complete = FUNC0(dev);
		} else {
			ret = -EINVAL;
			goto out;
		}

		if (!complete) {
			unsigned long left_time;

			left_time = FUNC2(timeinc);
			timeout -= (timeinc - left_time);
		}
	} while (!complete && timeout > 0);

	if (complete)
		ret = 0;
	else
		ret = -EBUSY;

out:
	return ret;
}