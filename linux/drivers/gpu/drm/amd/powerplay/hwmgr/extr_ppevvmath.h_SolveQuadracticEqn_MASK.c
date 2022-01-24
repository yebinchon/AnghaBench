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
typedef  int /*<<< orphan*/  fInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(fInt A, fInt B, fInt C, fInt Roots[])
{
	fInt *pRoots = &Roots[0];
	fInt temp, root_first, root_second;
	fInt f_CONSTANT10, f_CONSTANT100;

	f_CONSTANT100 = FUNC0(100);
	f_CONSTANT10 = FUNC0(10);

	while(FUNC1(A, f_CONSTANT100) || FUNC1(B, f_CONSTANT100) || FUNC1(C, f_CONSTANT100)) {
		A = FUNC3(A, f_CONSTANT10);
		B = FUNC3(B, f_CONSTANT10);
		C = FUNC3(C, f_CONSTANT10);
	}

	temp = FUNC5(FUNC0(4), A); /* root = 4*A */
	temp = FUNC5(temp, C); /* root = 4*A*C */
	temp = FUNC8(FUNC4(B), temp); /* root = b^2 - 4AC */
	temp = FUNC7(temp); /*root = Sqrt (b^2 - 4AC); */

	root_first = FUNC8(FUNC6(B), temp); /* b - Sqrt(b^2 - 4AC) */
	root_second = FUNC2(FUNC6(B), temp); /* b + Sqrt(b^2 - 4AC) */

	root_first = FUNC3(root_first, FUNC0(2)); /* [b +- Sqrt(b^2 - 4AC)]/[2] */
	root_first = FUNC3(root_first, A); /*[b +- Sqrt(b^2 - 4AC)]/[2*A] */

	root_second = FUNC3(root_second, FUNC0(2)); /* [b +- Sqrt(b^2 - 4AC)]/[2] */
	root_second = FUNC3(root_second, A); /*[b +- Sqrt(b^2 - 4AC)]/[2*A] */

	*(pRoots + 0) = root_first;
	*(pRoots + 1) = root_second;
}