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
struct fixed31_32 {int dummy; } ;

/* Variables and functions */
 struct fixed31_32 FUNC0 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC1 (int,int) ; 
 int /*<<< orphan*/  dc_fixpt_half ; 
 struct fixed31_32 FUNC2 (struct fixed31_32) ; 
 scalar_t__ FUNC3 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC4 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC5 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC6 (struct fixed31_32,struct fixed31_32) ; 

__attribute__((used)) static void FUNC7(struct fixed31_32 in_x, struct fixed31_32 *out_y,
		uint32_t sdr_white_level, uint32_t max_luminance_nits)
{
	struct fixed31_32 a;
	struct fixed31_32 b;
	struct fixed31_32 c;
	struct fixed31_32 threshold;
	struct fixed31_32 x;

	struct fixed31_32 scaling_factor =
			FUNC1(sdr_white_level, max_luminance_nits);
	a = FUNC1(17883277, 100000000);
	b = FUNC1(28466892, 100000000);
	c = FUNC1(55991073, 100000000);
	threshold = FUNC1(1, 12);
	x = FUNC4(in_x, scaling_factor);


	if (FUNC3(x, threshold)) {
		x = FUNC4(x, FUNC1(3, 1));
		*out_y = FUNC5(x, dc_fixpt_half);
	} else {
		x = FUNC4(x, FUNC1(12, 1));
		x = FUNC6(x, b);
		x = FUNC2(x);
		x = FUNC4(a, x);
		*out_y = FUNC0(x, c);
	}
}