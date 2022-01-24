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
struct surface3_ts_data_finger {int status; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  tracking_id; } ;
struct surface3_ts_data {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct surface3_ts_data *ts_data,
				   struct surface3_ts_data_finger *finger)
{
	int st = finger->status & 0x01;
	int slot;

	slot = FUNC1(ts_data->input_dev,
				FUNC0(&finger->tracking_id));
	if (slot < 0)
		return;

	FUNC3(ts_data->input_dev, slot);
	FUNC2(ts_data->input_dev, MT_TOOL_FINGER, st);
	if (st) {
		FUNC4(ts_data->input_dev,
				 ABS_MT_POSITION_X,
				 FUNC0(&finger->x));
		FUNC4(ts_data->input_dev,
				 ABS_MT_POSITION_Y,
				 FUNC0(&finger->y));
		FUNC4(ts_data->input_dev,
				 ABS_MT_WIDTH_MAJOR,
				 FUNC0(&finger->width));
		FUNC4(ts_data->input_dev,
				 ABS_MT_WIDTH_MINOR,
				 FUNC0(&finger->height));
	}
}