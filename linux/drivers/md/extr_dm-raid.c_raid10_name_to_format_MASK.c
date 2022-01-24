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
 int ALGORITHM_RAID10_FAR ; 
 int ALGORITHM_RAID10_NEAR ; 
 int ALGORITHM_RAID10_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *name)
{
	if (!FUNC0(name, "near"))
		return ALGORITHM_RAID10_NEAR;
	else if (!FUNC0(name, "offset"))
		return ALGORITHM_RAID10_OFFSET;
	else if (!FUNC0(name, "far"))
		return ALGORITHM_RAID10_FAR;

	return -EINVAL;
}