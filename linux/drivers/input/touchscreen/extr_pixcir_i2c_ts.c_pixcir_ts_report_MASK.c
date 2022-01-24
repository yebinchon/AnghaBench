#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pixcir_report_data {int num_touches; TYPE_2__* pos; int /*<<< orphan*/ * ids; } ;
struct pixcir_i2c_ts_data {int /*<<< orphan*/  input; struct pixcir_i2c_chip_data* chip; TYPE_1__* client; } ;
struct pixcir_i2c_chip_data {scalar_t__ has_hw_ids; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int PIXCIR_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pixcir_i2c_ts_data *ts,
			     struct pixcir_report_data *report)
{
	int slots[PIXCIR_MAX_SLOTS];
	int n, i, slot;
	struct device *dev = &ts->client->dev;
	const struct pixcir_i2c_chip_data *chip = ts->chip;

	n = report->num_touches;
	if (n > PIXCIR_MAX_SLOTS)
		n = PIXCIR_MAX_SLOTS;

	if (!ts->chip->has_hw_ids)
		FUNC1(ts->input, slots, report->pos, n, 0);

	for (i = 0; i < n; i++) {
		if (chip->has_hw_ids) {
			slot = FUNC2(ts->input,
							report->ids[i]);
			if (slot < 0) {
				FUNC0(dev, "no free slot for id 0x%x\n",
					report->ids[i]);
				continue;
			}
		} else {
			slot = slots[i];
		}

		FUNC4(ts->input, slot);
		FUNC3(ts->input, MT_TOOL_FINGER, true);

		FUNC6(ts->input, ABS_MT_POSITION_X,
				 report->pos[i].x);
		FUNC6(ts->input, ABS_MT_POSITION_Y,
				 report->pos[i].y);

		FUNC0(dev, "%d: slot %d, x %d, y %d\n",
			i, slot, report->pos[i].x, report->pos[i].y);
	}

	FUNC5(ts->input);
	FUNC7(ts->input);
}