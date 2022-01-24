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
 struct fixed31_32 FUNC1 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC2 (struct fixed31_32,int) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32) ; 
 struct fixed31_32 FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC6 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC7 (struct fixed31_32,struct fixed31_32) ; 

__attribute__((used)) static void FUNC8(struct fixed31_32 in_x,
		struct fixed31_32 *out_y,
		uint32_t sdr_white_level, uint32_t max_luminance_nits)
{
	struct fixed31_32 a;
	struct fixed31_32 b;
	struct fixed31_32 c;
	struct fixed31_32 threshold;
	struct fixed31_32 x;

	struct fixed31_32 scaling_factor =
			FUNC4(max_luminance_nits, sdr_white_level);
	a = FUNC4(17883277, 100000000);
	b = FUNC4(28466892, 100000000);
	c = FUNC4(55991073, 100000000);
	threshold = FUNC4(1, 2);

	if (FUNC5(in_x, threshold)) {
		x = FUNC6(in_x, in_x);
		x = FUNC2(x, 3);
	} else {
		x = FUNC7(in_x, c);
		x = FUNC1(x, a);
		x = FUNC3(x);
		x = FUNC0(x, b);
		x = FUNC2(x, 12);
	}
	*out_y = FUNC6(x, scaling_factor);

}