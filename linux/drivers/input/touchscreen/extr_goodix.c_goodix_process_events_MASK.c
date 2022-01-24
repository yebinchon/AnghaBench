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
struct goodix_ts_data {int contact_size; int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int GOODIX_MAX_CONTACTS ; 
 int GOODIX_MAX_CONTACT_SIZE ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int FUNC1 (struct goodix_ts_data*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct goodix_ts_data*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct goodix_ts_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct goodix_ts_data *ts)
{
	u8  point_data[1 + GOODIX_MAX_CONTACT_SIZE * GOODIX_MAX_CONTACTS];
	int touch_num;
	int i;

	touch_num = FUNC1(ts, point_data);
	if (touch_num < 0)
		return;

	/*
	 * Bit 4 of the first byte reports the status of the capacitive
	 * Windows/Home button.
	 */
	FUNC5(ts->input_dev, KEY_LEFTMETA, point_data[0] & FUNC0(4));

	for (i = 0; i < touch_num; i++)
		if (ts->contact_size == 9)
			FUNC3(ts,
				&point_data[1 + ts->contact_size * i]);
		else
			FUNC2(ts,
				&point_data[1 + ts->contact_size * i]);

	FUNC4(ts->input_dev);
	FUNC6(ts->input_dev);
}