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
typedef  int uint32_t ;
struct i2c_msg {int addr; int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_adapter {int /*<<< orphan*/  ddc_event; struct hdmi* hdmi; } ;
struct hdmi {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  DDC_READ ; 
 int /*<<< orphan*/  DDC_WRITE ; 
 int ETIMEDOUT ; 
 int FUNC1 (int,int (*) (int)) ; 
 int HDMI_CTRL_ENABLE ; 
 int HDMI_DDC_CTRL_GO ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int HDMI_DDC_DATA_INDEX_WRITE ; 
#define  HDMI_DDC_SW_STATUS_NACK0 131 
#define  HDMI_DDC_SW_STATUS_NACK1 130 
#define  HDMI_DDC_SW_STATUS_NACK2 129 
#define  HDMI_DDC_SW_STATUS_NACK3 128 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int HDMI_I2C_TRANSACTION_REG_START ; 
 int HDMI_I2C_TRANSACTION_REG_STOP ; 
 int HZ ; 
 int I2C_M_RD ; 
 int MAX_TRANSACTIONS ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_DDC_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_DDC_DATA ; 
 int /*<<< orphan*/  REG_HDMI_DDC_HW_STATUS ; 
 int /*<<< orphan*/  REG_HDMI_DDC_INT_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_DDC_SW_STATUS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct hdmi_i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC12 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hdmi_i2c_adapter*) ; 
 int FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct hdmi_i2c_adapter*) ; 
 struct hdmi_i2c_adapter* FUNC17 (struct i2c_adapter*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct i2c_adapter *i2c,
		struct i2c_msg *msgs, int num)
{
	struct hdmi_i2c_adapter *hdmi_i2c = FUNC17(i2c);
	struct hdmi *hdmi = hdmi_i2c->hdmi;
	struct drm_device *dev = hdmi->dev;
	static const uint32_t nack[] = {
			HDMI_DDC_SW_STATUS_NACK0, HDMI_DDC_SW_STATUS_NACK1,
			HDMI_DDC_SW_STATUS_NACK2, HDMI_DDC_SW_STATUS_NACK3,
	};
	int indices[MAX_TRANSACTIONS];
	int ret, i, j, index = 0;
	uint32_t ddc_status, ddc_data, i2c_trans;

	num = FUNC15(num, MAX_TRANSACTIONS);

	FUNC9(!(FUNC12(hdmi, REG_HDMI_CTRL) & HDMI_CTRL_ENABLE));

	if (num == 0)
		return num;

	FUNC14(hdmi_i2c);

	ret = FUNC10(hdmi_i2c);
	if (ret)
		return ret;

	for (i = 0; i < num; i++) {
		struct i2c_msg *p = &msgs[i];
		uint32_t raw_addr = p->addr << 1;

		if (p->flags & I2C_M_RD)
			raw_addr |= 1;

		ddc_data = FUNC3(raw_addr) |
				FUNC4(DDC_WRITE);

		if (i == 0) {
			ddc_data |= FUNC5(0) |
					HDMI_DDC_DATA_INDEX_WRITE;
		}

		FUNC13(hdmi, REG_HDMI_DDC_DATA, ddc_data);
		index++;

		indices[i] = index;

		if (p->flags & I2C_M_RD) {
			index += p->len;
		} else {
			for (j = 0; j < p->len; j++) {
				ddc_data = FUNC3(p->buf[j]) |
						FUNC4(DDC_WRITE);
				FUNC13(hdmi, REG_HDMI_DDC_DATA, ddc_data);
				index++;
			}
		}

		i2c_trans = FUNC6(p->len) |
				FUNC7(
						(p->flags & I2C_M_RD) ? DDC_READ : DDC_WRITE) |
				HDMI_I2C_TRANSACTION_REG_START;

		if (i == (num - 1))
			i2c_trans |= HDMI_I2C_TRANSACTION_REG_STOP;

		FUNC13(hdmi, FUNC8(i), i2c_trans);
	}

	/* trigger the transfer: */
	FUNC13(hdmi, REG_HDMI_DDC_CTRL,
			FUNC2(num - 1) |
			HDMI_DDC_CTRL_GO);

	ret = FUNC18(hdmi_i2c->ddc_event, FUNC16(hdmi_i2c), HZ/4);
	if (ret <= 0) {
		if (ret == 0)
			ret = -ETIMEDOUT;
		FUNC11(dev->dev, "DDC timeout: %d\n", ret);
		FUNC0("sw_status=%08x, hw_status=%08x, int_ctrl=%08x",
				FUNC12(hdmi, REG_HDMI_DDC_SW_STATUS),
				FUNC12(hdmi, REG_HDMI_DDC_HW_STATUS),
				FUNC12(hdmi, REG_HDMI_DDC_INT_CTRL));
		return ret;
	}

	ddc_status = FUNC12(hdmi, REG_HDMI_DDC_SW_STATUS);

	/* read back results of any read transactions: */
	for (i = 0; i < num; i++) {
		struct i2c_msg *p = &msgs[i];

		if (!(p->flags & I2C_M_RD))
			continue;

		/* check for NACK: */
		if (ddc_status & nack[i]) {
			FUNC0("ddc_status=%08x", ddc_status);
			break;
		}

		ddc_data = FUNC4(DDC_READ) |
				FUNC5(indices[i]) |
				HDMI_DDC_DATA_INDEX_WRITE;

		FUNC13(hdmi, REG_HDMI_DDC_DATA, ddc_data);

		/* discard first byte: */
		FUNC12(hdmi, REG_HDMI_DDC_DATA);

		for (j = 0; j < p->len; j++) {
			ddc_data = FUNC12(hdmi, REG_HDMI_DDC_DATA);
			p->buf[j] = FUNC1(ddc_data, HDMI_DDC_DATA_DATA);
		}
	}

	return i;
}