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
struct zx_hdmi {int /*<<< orphan*/  dev; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDC_CMD_CLEAR_FIFO ; 
 int /*<<< orphan*/  DDC_CMD_MASK ; 
 int /*<<< orphan*/  DDC_CMD_SEQUENTIAL_READ ; 
 int DDC_DOUT_CNT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ZX_DDC_CMD ; 
 int /*<<< orphan*/  ZX_DDC_DATA ; 
 int /*<<< orphan*/  ZX_DDC_DIN_CNT1 ; 
 int /*<<< orphan*/  ZX_DDC_DIN_CNT2 ; 
 int /*<<< orphan*/  ZX_DDC_DOUT_CNT ; 
 int FUNC1 (struct zx_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zx_hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zx_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct zx_hdmi *hdmi, struct i2c_msg *msg)
{
	int len = msg->len;
	u8 *buf = msg->buf;
	int retry = 0;
	int ret = 0;

	/* Bits [9:8] of bytes */
	FUNC2(hdmi, ZX_DDC_DIN_CNT2, (len >> 8) & 0xff);
	/* Bits [7:0] of bytes */
	FUNC2(hdmi, ZX_DDC_DIN_CNT1, len & 0xff);

	/* Clear FIFO */
	FUNC3(hdmi, ZX_DDC_CMD, DDC_CMD_MASK, DDC_CMD_CLEAR_FIFO);

	/* Kick off the read */
	FUNC3(hdmi, ZX_DDC_CMD, DDC_CMD_MASK,
			 DDC_CMD_SEQUENTIAL_READ);

	while (len > 0) {
		int cnt, i;

		/* FIFO needs some time to get ready */
		FUNC4(500, 1000);

		cnt = FUNC1(hdmi, ZX_DDC_DOUT_CNT) & DDC_DOUT_CNT_MASK;
		if (cnt == 0) {
			if (++retry > 5) {
				FUNC0(hdmi->dev,
					      "DDC FIFO read timed out!");
				return -ETIMEDOUT;
			}
			continue;
		}

		for (i = 0; i < cnt; i++)
			*buf++ = FUNC1(hdmi, ZX_DDC_DATA);
		len -= cnt;
	}

	return ret;
}