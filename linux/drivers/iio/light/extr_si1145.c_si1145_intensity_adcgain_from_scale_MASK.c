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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  si1145_intensity_scale_available ; 

__attribute__((used)) static int FUNC2(int val, int val2)
{
	val = FUNC1(val, si1145_intensity_scale_available,
				FUNC0(si1145_intensity_scale_available));
	if (val < 0 || val > 7 || val2 != 0)
		return -EINVAL;

	return val;
}