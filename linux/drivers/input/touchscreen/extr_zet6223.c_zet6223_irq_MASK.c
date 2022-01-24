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
typedef  int u16 ;
struct zet6223_ts {int fingernum; int /*<<< orphan*/  input; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int ZET6223_MAX_PKT_SIZE ; 
 int ZET6223_VALID_PACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct zet6223_ts *ts = dev_id;
	u16 finger_bits;

	/*
	 * First 3 bytes are an identifier, two bytes of finger data.
	 * X, Y data per finger is 4 bytes.
	 */
	u8 bufsize = 3 + 4 * ts->fingernum;
	u8 buf[ZET6223_MAX_PKT_SIZE];
	int i;
	int ret;
	int error;

	ret = FUNC3(ts->client, buf, bufsize);
	if (ret != bufsize) {
		error = ret < 0 ? ret : -EIO;
		FUNC1(&ts->client->dev,
				    "Error reading input data: %d\n", error);
		return IRQ_HANDLED;
	}

	if (buf[0] != ZET6223_VALID_PACKET)
		return IRQ_HANDLED;

	finger_bits = FUNC2(buf + 1);
	for (i = 0; i < ts->fingernum; i++) {
		if (!(finger_bits & FUNC0(15 - i)))
			continue;

		FUNC6(ts->input, i);
		FUNC5(ts->input, MT_TOOL_FINGER, true);
		FUNC4(ts->input, EV_ABS, ABS_MT_POSITION_X,
				((buf[i + 3] >> 4) << 8) + buf[i + 4]);
		FUNC4(ts->input, EV_ABS, ABS_MT_POSITION_Y,
				((buf[i + 3] & 0xF) << 8) + buf[i + 5]);
	}

	FUNC7(ts->input);
	FUNC8(ts->input);

	return IRQ_HANDLED;
}