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
struct hwspinlock {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_hwspin_lock_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct hwspinlock**) ; 
 struct hwspinlock** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hwspinlock**) ; 
 struct hwspinlock* FUNC3 () ; 

struct hwspinlock *FUNC4(struct device *dev)
{
	struct hwspinlock **ptr, *hwlock;

	ptr = FUNC1(devm_hwspin_lock_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	hwlock = FUNC3();
	if (hwlock) {
		*ptr = hwlock;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return hwlock;
}