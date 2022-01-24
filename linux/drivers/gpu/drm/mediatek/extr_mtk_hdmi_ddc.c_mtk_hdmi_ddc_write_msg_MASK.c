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
typedef  int u32 ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct mtk_hdmi_ddc {TYPE_2__ adap; } ;
struct i2c_msg {int addr; int* buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDCM_ACK_MASK ; 
 int /*<<< orphan*/  DDCM_ACK_OFFSET ; 
 int /*<<< orphan*/  DDCM_DATA0 ; 
 int /*<<< orphan*/  DDCM_DATA1 ; 
 int /*<<< orphan*/  DDCM_PGLEN_MASK ; 
 int DDCM_PGLEN_OFFSET ; 
 int /*<<< orphan*/  DDCM_START ; 
 int /*<<< orphan*/  DDCM_WRITE_DATA ; 
 int /*<<< orphan*/  DDC_DDCMCTL1 ; 
 int /*<<< orphan*/  DDC_DDCMD0 ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct mtk_hdmi_ddc *ddc, struct i2c_msg *msg)
{
	struct device *dev = ddc->adap.dev.parent;
	u32 ack;

	FUNC0(ddc, DDCM_START);
	FUNC4(ddc, DDC_DDCMD0, DDCM_DATA0, 0, msg->addr << 1);
	FUNC4(ddc, DDC_DDCMD0, DDCM_DATA1, 8, msg->buf[0]);
	FUNC4(ddc, DDC_DDCMCTL1, DDCM_PGLEN_MASK, DDCM_PGLEN_OFFSET,
		       0x1);
	FUNC0(ddc, DDCM_WRITE_DATA);

	ack = FUNC3(ddc, DDC_DDCMCTL1, DDCM_ACK_MASK, DDCM_ACK_OFFSET);
	FUNC1(dev, "ack = %d\n", ack);

	if (ack != 0x03) {
		FUNC2(dev, "i2c ack err!\n");
		return -EIO;
	}

	return 0;
}