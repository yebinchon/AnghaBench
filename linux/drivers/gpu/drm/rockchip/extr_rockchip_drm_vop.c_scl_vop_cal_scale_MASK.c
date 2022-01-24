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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  enum scale_mode { ____Placeholder_scale_mode } scale_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SCALE_DOWN ; 
 int SCALE_UP ; 
 int SCALE_UP_BIL ; 
 int SCL_FT_DEFAULT_FIXPOINT_SHIFT ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC5(enum scale_mode mode, uint32_t src,
				  uint32_t dst, bool is_horizontal,
				  int vsu_mode, int *vskiplines)
{
	uint16_t val = 1 << SCL_FT_DEFAULT_FIXPOINT_SHIFT;

	if (vskiplines)
		*vskiplines = 0;

	if (is_horizontal) {
		if (mode == SCALE_UP)
			val = FUNC0(src, dst);
		else if (mode == SCALE_DOWN)
			val = FUNC1(src, dst);
	} else {
		if (mode == SCALE_UP) {
			if (vsu_mode == SCALE_UP_BIL)
				val = FUNC2(src, dst);
			else
				val = FUNC0(src, dst);
		} else if (mode == SCALE_DOWN) {
			if (vskiplines) {
				*vskiplines = FUNC4(src, dst);
				val = FUNC3(src, dst,
							    *vskiplines);
			} else {
				val = FUNC1(src, dst);
			}
		}
	}

	return val;
}