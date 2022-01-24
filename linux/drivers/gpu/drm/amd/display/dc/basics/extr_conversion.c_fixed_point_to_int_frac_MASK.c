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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct fixed31_32 {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fixed31_32) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fixed31_32,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_fixpt_zero ; 

uint16_t FUNC8(
	struct fixed31_32 arg,
	uint8_t integer_bits,
	uint8_t fractional_bits)
{
	int32_t numerator;
	int32_t divisor = 1 << fractional_bits;

	uint16_t result;

	uint16_t d = (uint16_t)FUNC1(
		FUNC0(
			arg));

	if (d <= (uint16_t)(1 << integer_bits) - (1 / (uint16_t)divisor))
		numerator = (uint16_t)FUNC6(
			FUNC4(
				arg,
				divisor));
	else {
		numerator = FUNC1(
			FUNC7(
				FUNC2(
					1LL << integer_bits),
				FUNC5(
					FUNC2(
						divisor))));
	}

	if (numerator >= 0)
		result = (uint16_t)numerator;
	else
		result = (uint16_t)(
		(1 << (integer_bits + fractional_bits + 1)) + numerator);

	if ((result != 0) && FUNC3(
		arg, dc_fixpt_zero))
		result |= 1 << (integer_bits + fractional_bits);

	return result;
}