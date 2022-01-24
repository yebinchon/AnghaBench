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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static const char *FUNC3(int layout)
{
	/*
	 * Bit 16 stands for "offset"
	 * (i.e. adjacent stripes hold copies)
	 *
	 * Refer to MD's raid10.c for details
	 */
	if (FUNC0(layout))
		return "offset";

	if (FUNC2(layout) > 1)
		return "near";

	if (FUNC1(layout) > 1)
		return "far";

	return "unknown";
}