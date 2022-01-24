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
typedef  int u8 ;
struct edt_ft5x06_ts_data {int version; int max_support_points; int /*<<< orphan*/  input; int /*<<< orphan*/  prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rdbuf ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
#define  EDT_M06 132 
#define  EDT_M09 131 
#define  EDT_M12 130 
#define  EV_FT 129 
#define  GENERIC_FT 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int TOUCH_EVENT_DOWN ; 
 int TOUCH_EVENT_RESERVED ; 
 int TOUCH_EVENT_UP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct edt_ft5x06_ts_data*,int*,int) ; 
 int FUNC2 (TYPE_1__*,int,int*,int,int*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct edt_ft5x06_ts_data *tsdata = dev_id;
	struct device *dev = &tsdata->client->dev;
	u8 cmd;
	u8 rdbuf[63];
	int i, type, x, y, id;
	int offset, tplen, datalen, crclen;
	int error;

	switch (tsdata->version) {
	case EDT_M06:
		cmd = 0xf9; /* tell the controller to send touch data */
		offset = 5; /* where the actual touch data starts */
		tplen = 4;  /* data comes in so called frames */
		crclen = 1; /* length of the crc data */
		break;

	case EDT_M09:
	case EDT_M12:
	case EV_FT:
	case GENERIC_FT:
		cmd = 0x0;
		offset = 3;
		tplen = 6;
		crclen = 0;
		break;

	default:
		goto out;
	}

	FUNC8(rdbuf, 0, sizeof(rdbuf));
	datalen = tplen * tsdata->max_support_points + offset + crclen;

	error = FUNC2(tsdata->client,
					sizeof(cmd), &cmd,
					datalen, rdbuf);
	if (error) {
		FUNC0(dev, "Unable to fetch data, error: %d\n",
				    error);
		goto out;
	}

	/* M09/M12 does not send header or CRC */
	if (tsdata->version == EDT_M06) {
		if (rdbuf[0] != 0xaa || rdbuf[1] != 0xaa ||
			rdbuf[2] != datalen) {
			FUNC0(dev,
					"Unexpected header: %02x%02x%02x!\n",
					rdbuf[0], rdbuf[1], rdbuf[2]);
			goto out;
		}

		if (!FUNC1(tsdata, rdbuf, datalen))
			goto out;
	}

	for (i = 0; i < tsdata->max_support_points; i++) {
		u8 *buf = &rdbuf[i * tplen + offset];

		type = buf[0] >> 6;
		/* ignore Reserved events */
		if (type == TOUCH_EVENT_RESERVED)
			continue;

		/* M06 sometimes sends bogus coordinates in TOUCH_DOWN */
		if (tsdata->version == EDT_M06 && type == TOUCH_EVENT_DOWN)
			continue;

		x = FUNC3(buf) & 0x0fff;
		y = FUNC3(buf + 2) & 0x0fff;
		/* The FT5x26 send the y coordinate first */
		if (tsdata->version == EV_FT)
			FUNC9(x, y);

		id = (buf[2] >> 4) & 0x0f;

		FUNC6(tsdata->input, id);
		if (FUNC5(tsdata->input, MT_TOOL_FINGER,
					       type != TOUCH_EVENT_UP))
			FUNC10(tsdata->input, &tsdata->prop,
					       x, y, true);
	}

	FUNC4(tsdata->input, true);
	FUNC7(tsdata->input);

out:
	return IRQ_HANDLED;
}