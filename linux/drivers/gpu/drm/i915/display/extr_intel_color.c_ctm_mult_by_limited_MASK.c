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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ CTM_COEFF_4_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CTM_COEFF_LIMITED_RANGE ; 
 int CTM_COEFF_SIGN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static u64 *FUNC3(u64 *result, const u64 *input)
{
	int i;

	for (i = 0; i < 9; i++) {
		u64 user_coeff = input[i];
		u32 limited_coeff = CTM_COEFF_LIMITED_RANGE;
		u32 abs_coeff = FUNC1(FUNC0(user_coeff), 0,
					  CTM_COEFF_4_0 - 1) >> 2;

		/*
		 * By scaling every co-efficient with limited range (16-235)
		 * vs full range (0-255) the final o/p will be scaled down to
		 * fit in the limited range supported by the panel.
		 */
		result[i] = FUNC2(limited_coeff, abs_coeff) >> 30;
		result[i] |= user_coeff & CTM_COEFF_SIGN;
	}

	return result;
}