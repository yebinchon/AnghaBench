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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static fInt FUNC5 (uint32_t leakageID_fuse, fInt ln_max_div_min, fInt f_min, uint32_t bitlength)
{
	fInt fLeakage;
	fInt f_bit_max_value = FUNC0((FUNC4(2, bitlength)) - 1);

	fLeakage = FUNC3(ln_max_div_min, FUNC0(leakageID_fuse));
	fLeakage = FUNC1(fLeakage, f_bit_max_value);
	fLeakage = FUNC2(fLeakage);
	fLeakage = FUNC3(fLeakage, f_min);

	return fLeakage;
}