#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct device {int dummy; } ;
struct cyapa_pip_report_data {scalar_t__* report_head; } ;
struct cyapa {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GEN5_OLD_PUSH_BTN_REPORT_ID ; 
 unsigned int PIP_BTN_REPORT_HEAD_SIZE ; 
 scalar_t__ PIP_BTN_REPORT_ID ; 
 unsigned int PIP_BTN_REPORT_MAX_SIZE ; 
 scalar_t__ PIP_PROXIMITY_REPORT_ID ; 
 unsigned int PIP_PROXIMITY_REPORT_SIZE ; 
 scalar_t__ PIP_PUSH_BTN_REPORT_ID ; 
 size_t PIP_RESP_LENGTH_OFFSET ; 
 unsigned int PIP_RESP_LENGTH_SIZE ; 
 size_t PIP_RESP_REPORT_ID_OFFSET ; 
 unsigned int PIP_TOUCH_REPORT_HEAD_SIZE ; 
 scalar_t__ PIP_TOUCH_REPORT_ID ; 
 unsigned int PIP_TOUCH_REPORT_MAX_SIZE ; 
 scalar_t__ PIP_WAKEUP_EVENT_REPORT_ID ; 
 unsigned int PIP_WAKEUP_EVENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa*,struct cyapa_pip_report_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa*,struct cyapa_pip_report_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa*,struct cyapa_pip_report_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 unsigned int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct cyapa *cyapa,
				   struct cyapa_pip_report_data *report_data)
{
	struct device *dev = &cyapa->client->dev;
	unsigned int report_len;
	u8 report_id;

	report_len = FUNC4(
			&report_data->report_head[PIP_RESP_LENGTH_OFFSET]);
	/* Idle, no data for report. */
	if (report_len == PIP_RESP_LENGTH_SIZE)
		return 0;

	report_id = report_data->report_head[PIP_RESP_REPORT_ID_OFFSET];
	if (report_id == PIP_WAKEUP_EVENT_REPORT_ID &&
			report_len == PIP_WAKEUP_EVENT_SIZE) {
		/*
		 * Device wake event from deep sleep mode for touch.
		 * This interrupt event is used to wake system up.
		 *
		 * Note:
		 * It will introduce about 20~40 ms additional delay
		 * time in receiving for first valid touch report data.
		 * The time is used to execute device runtime resume
		 * process.
		 */
		FUNC5(dev);
		FUNC6(dev);
		FUNC7(dev);
		return 0;
	} else if (report_id != PIP_TOUCH_REPORT_ID &&
			report_id != PIP_BTN_REPORT_ID &&
			report_id != GEN5_OLD_PUSH_BTN_REPORT_ID &&
			report_id != PIP_PUSH_BTN_REPORT_ID &&
			report_id != PIP_PROXIMITY_REPORT_ID) {
		/* Running in BL mode or unknown response data read. */
		FUNC3(dev, "invalid report_id=0x%02x\n", report_id);
		return -EINVAL;
	}

	if (report_id == PIP_TOUCH_REPORT_ID &&
		(report_len < PIP_TOUCH_REPORT_HEAD_SIZE ||
			report_len > PIP_TOUCH_REPORT_MAX_SIZE)) {
		/* Invalid report data length for finger packet. */
		FUNC3(dev, "invalid touch packet length=%d\n", report_len);
		return 0;
	}

	if ((report_id == PIP_BTN_REPORT_ID ||
			report_id == GEN5_OLD_PUSH_BTN_REPORT_ID ||
			report_id == PIP_PUSH_BTN_REPORT_ID) &&
		(report_len < PIP_BTN_REPORT_HEAD_SIZE ||
			report_len > PIP_BTN_REPORT_MAX_SIZE)) {
		/* Invalid report data length of button packet. */
		FUNC3(dev, "invalid button packet length=%d\n", report_len);
		return 0;
	}

	if (report_id == PIP_PROXIMITY_REPORT_ID &&
			report_len != PIP_PROXIMITY_REPORT_SIZE) {
		/* Invalid report data length of proximity packet. */
		FUNC3(dev, "invalid proximity data, length=%d\n", report_len);
		return 0;
	}

	if (report_id == PIP_TOUCH_REPORT_ID)
		FUNC2(cyapa, report_data);
	else if (report_id == PIP_PROXIMITY_REPORT_ID)
		FUNC1(cyapa, report_data);
	else
		FUNC0(cyapa, report_data);

	return 0;
}