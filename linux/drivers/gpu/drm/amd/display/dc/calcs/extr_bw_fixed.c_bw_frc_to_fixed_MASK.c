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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct bw_fixed {scalar_t__ value; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BW_FIXED_BITS_PER_FRACTIONAL_PART ; 
 int BW_FIXED_MAX_I32 ; 
 int MAX_I64 ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int,int,int*) ; 

struct bw_fixed FUNC3(int64_t numerator, int64_t denominator)
{
	struct bw_fixed res;
	bool arg1_negative = numerator < 0;
	bool arg2_negative = denominator < 0;
	uint64_t arg1_value;
	uint64_t arg2_value;
	uint64_t remainder;

	/* determine integer part */
	uint64_t res_value;

	FUNC0(denominator != 0);

	arg1_value = FUNC1(numerator);
	arg2_value = FUNC1(denominator);
	res_value = FUNC2(arg1_value, arg2_value, &remainder);

	FUNC0(res_value <= BW_FIXED_MAX_I32);

	/* determine fractional part */
	{
		uint32_t i = BW_FIXED_BITS_PER_FRACTIONAL_PART;

		do
		{
			remainder <<= 1;

			res_value <<= 1;

			if (remainder >= arg2_value)
			{
				res_value |= 1;
				remainder -= arg2_value;
			}
		} while (--i != 0);
	}

	/* round up LSB */
	{
		uint64_t summand = (remainder << 1) >= arg2_value;

		FUNC0(res_value <= MAX_I64 - summand);

		res_value += summand;
	}

	res.value = (int64_t)(res_value);

	if (arg1_negative ^ arg2_negative)
		res.value = -res.value;
	return res;
}