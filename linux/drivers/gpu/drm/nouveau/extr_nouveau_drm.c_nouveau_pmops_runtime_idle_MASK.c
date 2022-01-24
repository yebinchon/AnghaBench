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
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int
FUNC4(struct device *dev)
{
	if (!FUNC0()) {
		FUNC2(dev);
		return -EBUSY;
	}

	FUNC3(dev);
	FUNC1(dev);
	/* we don't want the main rpm_idle to call suspend - we want to autosuspend */
	return 1;
}