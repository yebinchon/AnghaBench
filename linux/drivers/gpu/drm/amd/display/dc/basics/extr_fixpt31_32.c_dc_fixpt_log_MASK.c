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
struct fixed31_32 {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (scalar_t__) ; 
 struct fixed31_32 FUNC2 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fixed31_32) ; 
 struct fixed31_32 FUNC5 (struct fixed31_32) ; 
 struct fixed31_32 dc_fixpt_one ; 
 struct fixed31_32 FUNC6 (struct fixed31_32,struct fixed31_32) ; 

struct fixed31_32 FUNC7(struct fixed31_32 arg)
{
	struct fixed31_32 res = FUNC5(dc_fixpt_one);
	/* TODO improve 1st estimation */

	struct fixed31_32 error;

	FUNC0(arg.value > 0);
	/* TODO if arg is negative, return NaN */
	/* TODO if arg is zero, return -INF */

	do {
		struct fixed31_32 res1 = FUNC2(
			FUNC6(
				res,
				dc_fixpt_one),
			FUNC3(
				arg,
				FUNC4(res)));

		error = FUNC6(
			res,
			res1);

		res = res1;
		/* TODO determine max_allowed_error based on quality of exp() */
	} while (FUNC1(error.value) > 100ULL);

	return res;
}