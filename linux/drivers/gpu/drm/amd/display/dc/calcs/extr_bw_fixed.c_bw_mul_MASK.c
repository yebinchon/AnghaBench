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
typedef  int uint64_t ;
struct bw_fixed {scalar_t__ value; } ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BW_FIXED_BITS_PER_FRACTIONAL_PART ; 
 int FUNC1 (int) ; 
 int BW_FIXED_MAX_I32 ; 
 int FUNC2 (int) ; 
 int MAX_I64 ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_1__ FUNC4 (int,int) ; 

struct bw_fixed FUNC5(const struct bw_fixed arg1, const struct bw_fixed arg2)
{
	struct bw_fixed res;

	bool arg1_negative = arg1.value < 0;
	bool arg2_negative = arg2.value < 0;

	uint64_t arg1_value = FUNC3(arg1.value);
	uint64_t arg2_value = FUNC3(arg2.value);

	uint64_t arg1_int = FUNC1(arg1_value);
	uint64_t arg2_int = FUNC1(arg2_value);

	uint64_t arg1_fra = FUNC2(arg1_value);
	uint64_t arg2_fra = FUNC2(arg2_value);

	uint64_t tmp;

	res.value = arg1_int * arg2_int;

	FUNC0(res.value <= BW_FIXED_MAX_I32);

	res.value <<= BW_FIXED_BITS_PER_FRACTIONAL_PART;

	tmp = arg1_int * arg2_fra;

	FUNC0(tmp <= (uint64_t)(MAX_I64 - res.value));

	res.value += tmp;

	tmp = arg2_int * arg1_fra;

	FUNC0(tmp <= (uint64_t)(MAX_I64 - res.value));

	res.value += tmp;

	tmp = arg1_fra * arg2_fra;

	tmp = (tmp >> BW_FIXED_BITS_PER_FRACTIONAL_PART) +
		(tmp >= (uint64_t)(FUNC4(1, 2).value));

	FUNC0(tmp <= (uint64_t)(MAX_I64 - res.value));

	res.value += tmp;

	if (arg1_negative ^ arg2_negative)
		res.value = -res.value;
	return res;
}