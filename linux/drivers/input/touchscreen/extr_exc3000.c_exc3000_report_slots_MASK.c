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
typedef  int u8 ;
struct touchscreen_properties {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXC3000_LEN_POINT ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,struct touchscreen_properties*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct input_dev *input,
				 struct touchscreen_properties *prop,
				 const u8 *buf, int num)
{
	for (; num--; buf += EXC3000_LEN_POINT) {
		if (buf[0] & FUNC0(0)) {
			FUNC3(input, buf[1]);
			FUNC2(input, MT_TOOL_FINGER, true);
			FUNC4(input, prop,
					       FUNC1(buf + 2),
					       FUNC1(buf + 4),
					       true);
		}
	}
}