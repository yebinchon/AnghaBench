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
struct icc_provider {int /*<<< orphan*/  provider_list; int /*<<< orphan*/  nodes; scalar_t__ users; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  icc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct icc_provider *provider)
{
	FUNC2(&icc_lock);
	if (provider->users) {
		FUNC4("interconnect provider still has %d users\n",
			provider->users);
		FUNC3(&icc_lock);
		return -EBUSY;
	}

	if (!FUNC1(&provider->nodes)) {
		FUNC4("interconnect provider still has nodes\n");
		FUNC3(&icc_lock);
		return -EBUSY;
	}

	FUNC0(&provider->provider_list);
	FUNC3(&icc_lock);

	return 0;
}