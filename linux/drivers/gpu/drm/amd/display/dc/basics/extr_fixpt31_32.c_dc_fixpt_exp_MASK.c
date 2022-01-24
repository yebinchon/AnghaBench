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
 int /*<<< orphan*/  FUNC1 (struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC2 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32,long long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_fixpt_ln2 ; 
 int /*<<< orphan*/  dc_fixpt_ln2_div_2 ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct fixed31_32 dc_fixpt_one ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC8 (struct fixed31_32,unsigned char) ; 
 struct fixed31_32 FUNC9 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC10 (struct fixed31_32) ; 

struct fixed31_32 FUNC11(struct fixed31_32 arg)
{
	/*
	 * @brief
	 * Main equation is:
	 * exp(x) = exp(r + m * ln(2)) = (1 << m) * exp(r),
	 * where m = round(x / ln(2)), r = x - m * ln(2)
	 */

	if (FUNC4(
		dc_fixpt_ln2_div_2,
		FUNC1(arg))) {
		int m = FUNC7(
			FUNC2(
				arg,
				dc_fixpt_ln2));

		struct fixed31_32 r = FUNC9(
			arg,
			FUNC6(
				dc_fixpt_ln2,
				m));

		FUNC0(m != 0);

		FUNC0(FUNC5(
			FUNC1(r),
			dc_fixpt_one));

		if (m > 0)
			return FUNC8(
				FUNC10(r),
				(unsigned char)m);
		else
			return FUNC3(
				FUNC10(r),
				1LL << -m);
	} else if (arg.value != 0)
		return FUNC10(arg);
	else
		return dc_fixpt_one;
}