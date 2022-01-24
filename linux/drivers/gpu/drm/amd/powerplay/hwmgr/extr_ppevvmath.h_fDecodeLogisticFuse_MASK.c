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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  fInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static fInt FUNC8(uint32_t fuse_value, fInt f_average, fInt f_range, uint32_t bitlength)
{
	fInt f_fuse_value = FUNC1(fuse_value);
	fInt f_bit_max_value = FUNC1((FUNC7(2, bitlength)) - 1);

	fInt f_CONSTANT_NEG13 = FUNC0(-13);
	fInt f_CONSTANT1 = FUNC0(1);

	fInt f_decoded_value;

	f_decoded_value = FUNC6(FUNC3(f_bit_max_value, f_fuse_value), f_CONSTANT1);
	f_decoded_value = FUNC5(f_decoded_value);
	f_decoded_value = FUNC4(f_decoded_value, FUNC3(f_range, f_CONSTANT_NEG13));
	f_decoded_value = FUNC2(f_decoded_value, f_average);

	return f_decoded_value;
}