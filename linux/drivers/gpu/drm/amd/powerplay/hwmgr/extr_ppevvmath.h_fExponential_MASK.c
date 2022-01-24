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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  fInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fInt FUNC9(fInt exponent)        /*Can be used to calculate e^exponent*/
{
	uint32_t i;
	bool bNegated = false;

	fInt fPositiveOne = FUNC0(1);
	fInt fZERO = FUNC0(0);

	fInt lower_bound = FUNC1(78, 10000);
	fInt solution = fPositiveOne; /*Starting off with baseline of 1 */
	fInt error_term;

	static const uint32_t k_array[11] = {55452, 27726, 13863, 6931, 4055, 2231, 1178, 606, 308, 155, 78};
	static const uint32_t expk_array[11] = {2560000, 160000, 40000, 20000, 15000, 12500, 11250, 10625, 10313, 10156, 10078};

	if (FUNC3(fZERO, exponent)) {
		exponent = FUNC7(exponent);
		bNegated = true;
	}

	while (FUNC3(exponent, lower_bound)) {
		for (i = 0; i < 11; i++) {
			if (FUNC3(exponent, FUNC2(k_array[i], 10000))) {
				exponent = FUNC8(exponent, FUNC2(k_array[i], 10000));
				solution = FUNC6(solution, FUNC2(expk_array[i], 10000));
			}
		}
	}

	error_term = FUNC4(fPositiveOne, exponent);

	solution = FUNC6(solution, error_term);

	if (bNegated)
		solution = FUNC5(fPositiveOne, solution);

	return solution;
}