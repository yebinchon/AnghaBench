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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct surface3_ts_data_finger {int status; } ;
struct surface3_ts_data {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct surface3_ts_data*,struct surface3_ts_data_finger*) ; 

__attribute__((used)) static void FUNC4(struct surface3_ts_data *ts_data, u8 *data)
{
	u16 timestamp;
	unsigned int i;
	timestamp = FUNC0(&data[15]);

	for (i = 0; i < 13; i++) {
		struct surface3_ts_data_finger *finger;

		finger = (struct surface3_ts_data_finger *)&data[17 +
				i * sizeof(struct surface3_ts_data_finger)];

		/*
		 * When bit 5 of status is 1, it marks the end of the report:
		 * - touch present: 0xe7
		 * - touch released: 0xe4
		 * - nothing valuable: 0xff
		 */
		if (finger->status & 0x10)
			break;

		FUNC3(ts_data, finger);
	}

	FUNC1(ts_data->input_dev);
	FUNC2(ts_data->input_dev);
}