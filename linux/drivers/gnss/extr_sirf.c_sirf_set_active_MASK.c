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
struct sirf_data {int /*<<< orphan*/  wakeup; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long SIRF_ACTIVATE_TIMEOUT ; 
 unsigned long SIRF_HIBERNATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sirf_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sirf_data*) ; 
 int FUNC2 (struct sirf_data*) ; 
 int FUNC3 (struct sirf_data*,int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sirf_data *data, bool active)
{
	unsigned long timeout;
	int retries = 3;
	int ret;

	if (active)
		timeout = SIRF_ACTIVATE_TIMEOUT;
	else
		timeout = SIRF_HIBERNATE_TIMEOUT;

	if (!data->wakeup) {
		ret = FUNC2(data);
		if (ret)
			return ret;
	}

	do {
		FUNC0(data);
		ret = FUNC3(data, active, timeout);
	} while (ret == -ETIMEDOUT && retries--);

	if (!data->wakeup)
		FUNC1(data);

	if (ret)
		return ret;

	return 0;
}