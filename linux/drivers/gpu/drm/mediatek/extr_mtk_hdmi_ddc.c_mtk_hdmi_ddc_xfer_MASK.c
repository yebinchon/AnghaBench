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
struct mtk_hdmi_ddc {int dummy; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {struct device* parent; } ;
struct i2c_adapter {TYPE_1__ dev; struct mtk_hdmi_ddc* algo_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDCM_CLK_DIV_MASK ; 
 int /*<<< orphan*/  DDCM_CLK_DIV_OFFSET ; 
 int /*<<< orphan*/  DDCM_ODRAIN ; 
 int /*<<< orphan*/  DDCM_SCL_STRECH ; 
 int /*<<< orphan*/  DDCM_SM0EN ; 
 int /*<<< orphan*/  DDCM_STOP ; 
 int /*<<< orphan*/  DDCM_TRI ; 
 int /*<<< orphan*/  DDC_DDCMCTL0 ; 
 int /*<<< orphan*/  DDC_DDCMCTL1 ; 
 int EBUSY ; 
 int EINVAL ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  SIF1_CLOK ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct mtk_hdmi_ddc*,struct i2c_msg*) ; 
 int FUNC4 (struct mtk_hdmi_ddc*,struct i2c_msg*) ; 
 scalar_t__ FUNC5 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_hdmi_ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adapter,
			     struct i2c_msg *msgs, int num)
{
	struct mtk_hdmi_ddc *ddc = adapter->algo_data;
	struct device *dev = adapter->dev.parent;
	int ret;
	int i;

	if (!ddc) {
		FUNC2(dev, "invalid arguments\n");
		return -EINVAL;
	}

	FUNC7(ddc, DDC_DDCMCTL0, DDCM_SCL_STRECH);
	FUNC7(ddc, DDC_DDCMCTL0, DDCM_SM0EN);
	FUNC6(ddc, DDC_DDCMCTL0, DDCM_ODRAIN);

	if (FUNC5(ddc, DDC_DDCMCTL1, DDCM_TRI)) {
		FUNC2(dev, "ddc line is busy!\n");
		return -EBUSY;
	}

	FUNC8(ddc, DDC_DDCMCTL0, DDCM_CLK_DIV_MASK,
		       DDCM_CLK_DIV_OFFSET, SIF1_CLOK);

	for (i = 0; i < num; i++) {
		struct i2c_msg *msg = &msgs[i];

		FUNC1(dev, "i2c msg, adr:0x%x, flags:%d, len :0x%x\n",
			msg->addr, msg->flags, msg->len);

		if (msg->flags & I2C_M_RD)
			ret = FUNC3(ddc, msg);
		else
			ret = FUNC4(ddc, msg);
		if (ret < 0)
			goto xfer_end;
	}

	FUNC0(ddc, DDCM_STOP);

	return i;

xfer_end:
	FUNC0(ddc, DDCM_STOP);
	FUNC2(dev, "ddc failed!\n");
	return ret;
}