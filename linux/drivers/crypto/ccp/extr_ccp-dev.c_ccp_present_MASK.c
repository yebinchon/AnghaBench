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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ccp_unit_lock ; 
 int /*<<< orphan*/  ccp_units ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(void)
{
	unsigned long flags;
	int ret;

	FUNC1(&ccp_unit_lock, flags);
	ret = FUNC0(&ccp_units);
	FUNC2(&ccp_unit_lock, flags);

	return ret ? -ENODEV : 0;
}