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
struct fixed31_32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fixed31_32 const,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct fixed31_32,struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC4 (struct fixed31_32 const,struct fixed31_32) ; 
 struct fixed31_32 const dc_fixpt_one ; 
 struct fixed31_32 FUNC5 (struct fixed31_32,struct fixed31_32 const) ; 
 struct fixed31_32 dc_fixpt_zero ; 

__attribute__((used)) static void FUNC6(struct fixed31_32 in_x, struct fixed31_32 *out_y)
{
	/* consts for PQ gamma formula. */
	const struct fixed31_32 m1 =
		FUNC2(159301758, 1000000000);
	const struct fixed31_32 m2 =
		FUNC2(7884375, 100000);
	const struct fixed31_32 c1 =
		FUNC2(8359375, 10000000);
	const struct fixed31_32 c2 =
		FUNC2(188515625, 10000000);
	const struct fixed31_32 c3 =
		FUNC2(186875, 10000);

	struct fixed31_32 l_pow_m1;
	struct fixed31_32 base;

	if (FUNC3(in_x, dc_fixpt_zero))
		in_x = dc_fixpt_zero;

	l_pow_m1 = FUNC5(in_x, m1);
	base = FUNC1(
			FUNC0(c1,
					(FUNC4(c2, l_pow_m1))),
			FUNC0(dc_fixpt_one,
					(FUNC4(c3, l_pow_m1))));
	*out_y = FUNC5(base, m2);
}