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
typedef  int u16 ;
struct s6sy761_data {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int S6SY761_MASK_X ; 
 int S6SY761_MASK_Y ; 
 int S6SY761_MASK_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct s6sy761_data *sdata,
				       u8 *event, u8 tid)
{
	u8 major = event[4];
	u8 minor = event[5];
	u8 z = event[6] & S6SY761_MASK_Z;
	u16 x = (event[1] << 3) | ((event[3] & S6SY761_MASK_X) >> 4);
	u16 y = (event[2] << 3) | (event[3] & S6SY761_MASK_Y);

	FUNC1(sdata->input, tid);

	FUNC0(sdata->input, MT_TOOL_FINGER, true);
	FUNC2(sdata->input, ABS_MT_POSITION_X, x);
	FUNC2(sdata->input, ABS_MT_POSITION_Y, y);
	FUNC2(sdata->input, ABS_MT_TOUCH_MAJOR, major);
	FUNC2(sdata->input, ABS_MT_TOUCH_MINOR, minor);
	FUNC2(sdata->input, ABS_MT_PRESSURE, z);

	FUNC3(sdata->input);
}