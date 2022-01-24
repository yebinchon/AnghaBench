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
typedef  int u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

unsigned int FUNC3(u32 value)
{
	/**
	 *	returns: log10(value) * 2^24
	 *	wrong result if value = 0 (log10(0) is undefined)
	 */
	u64 log;

	if (FUNC2(value == 0)) {
		FUNC0(1);
		return 0;
	}

	log = FUNC1(value);

	/**
	 *	we use the following method:
	 *	log10(x) = log2(x) * log10(2)
	 */

	return (log * 646456993) >> 31;
}