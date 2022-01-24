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
 int /*<<< orphan*/  FUNC0 (struct fixed31_32,struct fixed31_32*) ; 
 int /*<<< orphan*/  FUNC1 (struct fixed31_32,struct fixed31_32*) ; 
 struct fixed31_32 FUNC2 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32,struct fixed31_32) ; 
 scalar_t__ FUNC4 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC5 (int,int) ; 
 struct fixed31_32 FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct fixed31_32,struct fixed31_32) ; 
 scalar_t__ FUNC8 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC9 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 dc_fixpt_one ; 
 struct fixed31_32 FUNC10 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 dc_fixpt_zero ; 

__attribute__((used)) static void FUNC11(struct fixed31_32 input_x,
				struct fixed31_32 max_display,
				struct fixed31_32 min_display,
				struct fixed31_32 max_content,
				struct fixed31_32 *out_x)
{
	struct fixed31_32 min_lum_pq;
	struct fixed31_32 max_lum_pq;
	struct fixed31_32 max_content_pq;
	struct fixed31_32 ks;
	struct fixed31_32 E1;
	struct fixed31_32 E2;
	struct fixed31_32 E3;
	struct fixed31_32 t;
	struct fixed31_32 t2;
	struct fixed31_32 t3;
	struct fixed31_32 two;
	struct fixed31_32 three;
	struct fixed31_32 temp1;
	struct fixed31_32 temp2;
	struct fixed31_32 a = FUNC5(15, 10);
	struct fixed31_32 b = FUNC5(5, 10);
	struct fixed31_32 epsilon = FUNC5(1, 1000000); // dc_fixpt_epsilon is a bit too small

	if (FUNC4(max_content, dc_fixpt_zero)) {
		*out_x = dc_fixpt_zero;
		return;
	}

	FUNC1(input_x, &E1);
	FUNC1(FUNC3(min_display, max_content), &min_lum_pq);
	FUNC1(FUNC3(max_display, max_content), &max_lum_pq);
	FUNC1(dc_fixpt_one, &max_content_pq); // always 1? DAL2 code is weird
	a = FUNC3(FUNC2(dc_fixpt_one, b), max_content_pq); // (1+b)/maxContent
	ks = FUNC10(FUNC9(a, max_lum_pq), b); // a * max_lum_pq - b

	if (FUNC8(E1, ks))
		E2 = E1;
	else if (FUNC7(ks, E1) && FUNC7(E1, dc_fixpt_one)) {
		if (FUNC8(epsilon, FUNC10(dc_fixpt_one, ks)))
			// t = (E1 - ks) / (1 - ks)
			t = FUNC3(FUNC10(E1, ks),
					FUNC10(dc_fixpt_one, ks));
		else
			t = dc_fixpt_zero;

		two = FUNC6(2);
		three = FUNC6(3);

		t2 = FUNC9(t, t);
		t3 = FUNC9(t2, t);
		temp1 = FUNC9(two, t3);
		temp2 = FUNC9(three, t2);

		// (2t^3 - 3t^2 + 1) * ks
		E2 = FUNC9(ks, FUNC2(dc_fixpt_one,
				FUNC10(temp1, temp2)));

		// (-2t^3 + 3t^2) * max_lum_pq
		E2 = FUNC2(E2, FUNC9(max_lum_pq,
				FUNC10(temp2, temp1)));

		temp1 = FUNC9(two, t2);
		temp2 = FUNC10(dc_fixpt_one, ks);

		// (t^3 - 2t^2 + t) * (1-ks)
		E2 = FUNC2(E2, FUNC9(temp2,
				FUNC2(t, FUNC10(t3, temp1))));
	} else
		E2 = dc_fixpt_one;

	temp1 = FUNC10(dc_fixpt_one, E2);
	temp2 = FUNC9(temp1, temp1);
	temp2 = FUNC9(temp2, temp2);
	// temp2 = (1-E2)^4

	E3 =  FUNC2(E2, FUNC9(min_lum_pq, temp2));
	FUNC0(E3, out_x);

	*out_x = FUNC3(*out_x, FUNC3(max_display, max_content));
}