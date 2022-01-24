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
 size_t INT_MAX ; 
 size_t const SIZE_MAX ; 
 size_t FUNC0 () ; 

__attribute__((used)) static bool FUNC1(size_t count)
{
	const size_t sz = FUNC0();

	/*
	 * When using LUT_HANDLE, we impose a limit of INT_MAX for the lookup
	 * array size (see eb_create()). Otherwise, we can accept an array as
	 * large as can be addressed (though use large arrays at your peril)!
	 */

	return !(count < 1 || count > INT_MAX || count > SIZE_MAX / sz - 1);
}