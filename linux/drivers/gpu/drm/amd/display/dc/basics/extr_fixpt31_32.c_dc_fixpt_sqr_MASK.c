#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fixed31_32 {unsigned long long value; } ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FIXED31_32_BITS_PER_FRACTIONAL_PART ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 unsigned long long FUNC2 (unsigned long long) ; 
 unsigned long long LLONG_MAX ; 
 unsigned long long LONG_MAX ; 
 unsigned long long FUNC3 (unsigned long long) ; 
 TYPE_1__ dc_fixpt_half ; 

struct fixed31_32 FUNC4(struct fixed31_32 arg)
{
	struct fixed31_32 res;

	unsigned long long arg_value = FUNC3(arg.value);

	unsigned long long arg_int = FUNC2(arg_value);

	unsigned long long arg_fra = FUNC1(arg_value);

	unsigned long long tmp;

	res.value = arg_int * arg_int;

	FUNC0(res.value <= LONG_MAX);

	res.value <<= FIXED31_32_BITS_PER_FRACTIONAL_PART;

	tmp = arg_int * arg_fra;

	FUNC0(tmp <= (unsigned long long)(LLONG_MAX - res.value));

	res.value += tmp;

	FUNC0(tmp <= (unsigned long long)(LLONG_MAX - res.value));

	res.value += tmp;

	tmp = arg_fra * arg_fra;

	tmp = (tmp >> FIXED31_32_BITS_PER_FRACTIONAL_PART) +
		(tmp >= (unsigned long long)dc_fixpt_half.value);

	FUNC0(tmp <= (unsigned long long)(LLONG_MAX - res.value));

	res.value += tmp;

	return res;
}