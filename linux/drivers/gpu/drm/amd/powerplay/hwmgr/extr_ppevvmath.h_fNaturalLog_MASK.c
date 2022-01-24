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

__attribute__((used)) static fInt FUNC6(fInt value)
{
	uint32_t i;
	fInt upper_bound = FUNC1(8, 1000);
	fInt fNegativeOne = FUNC0(-1);
	fInt solution = FUNC0(0); /*Starting off with baseline of 0 */
	fInt error_term;

	static const uint32_t k_array[10] = {160000, 40000, 20000, 15000, 12500, 11250, 10625, 10313, 10156, 10078};
	static const uint32_t logk_array[10] = {27726, 13863, 6931, 4055, 2231, 1178, 606, 308, 155, 78};

	while (FUNC3(FUNC4(value, fNegativeOne), upper_bound)) {
		for (i = 0; i < 10; i++) {
			if (FUNC3(value, FUNC2(k_array[i], 10000))) {
				value = FUNC5(value, FUNC2(k_array[i], 10000));
				solution = FUNC4(solution, FUNC2(logk_array[i], 10000));
			}
		}
	}

	error_term = FUNC4(fNegativeOne, value);

	return (FUNC4(solution, error_term));
}