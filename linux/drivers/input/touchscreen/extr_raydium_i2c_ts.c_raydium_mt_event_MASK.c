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
struct raydium_data {int report_size; int contact_size; int* report_data; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 size_t RM_CONTACT_PRESSURE_POS ; 
 size_t RM_CONTACT_STATE_POS ; 
 size_t RM_CONTACT_WIDTH_X_POS ; 
 size_t RM_CONTACT_WIDTH_Y_POS ; 
 size_t RM_CONTACT_X_POS ; 
 size_t RM_CONTACT_Y_POS ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct raydium_data *ts)
{
	int i;

	for (i = 0; i < ts->report_size / ts->contact_size; i++) {
		u8 *contact = &ts->report_data[ts->contact_size * i];
		bool state = contact[RM_CONTACT_STATE_POS];
		u8 wx, wy;

		FUNC2(ts->input, i);
		FUNC1(ts->input, MT_TOOL_FINGER, state);

		if (!state)
			continue;

		FUNC4(ts->input, ABS_MT_POSITION_X,
				FUNC0(&contact[RM_CONTACT_X_POS]));
		FUNC4(ts->input, ABS_MT_POSITION_Y,
				FUNC0(&contact[RM_CONTACT_Y_POS]));
		FUNC4(ts->input, ABS_MT_PRESSURE,
				contact[RM_CONTACT_PRESSURE_POS]);

		wx = contact[RM_CONTACT_WIDTH_X_POS];
		wy = contact[RM_CONTACT_WIDTH_Y_POS];

		FUNC4(ts->input, ABS_MT_TOUCH_MAJOR, FUNC6(wx, wy));
		FUNC4(ts->input, ABS_MT_TOUCH_MINOR, FUNC7(wx, wy));
	}

	FUNC3(ts->input);
	FUNC5(ts->input);
}