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
typedef  int /*<<< orphan*/  u32 ;
struct sun4i_hdmi {int /*<<< orphan*/  ddc_clk; int /*<<< orphan*/  field_ddc_sda_en; int /*<<< orphan*/  field_ddc_sck_en; int /*<<< orphan*/  field_ddc_reset; int /*<<< orphan*/  field_ddc_en; } ;
struct i2c_msg {scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ SUN4I_HDMI_DDC_BYTE_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct sun4i_hdmi* FUNC3 (struct i2c_adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct sun4i_hdmi*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap,
			       struct i2c_msg *msgs, int num)
{
	struct sun4i_hdmi *hdmi = FUNC3(adap);
	u32 reg;
	int err, i, ret = num;

	for (i = 0; i < num; i++) {
		if (!msgs[i].len)
			return -EINVAL;
		if (msgs[i].len > SUN4I_HDMI_DDC_BYTE_COUNT_MAX)
			return -EINVAL;
	}

	/* DDC clock needs to be enabled for the module to work */
	FUNC1(hdmi->ddc_clk);
	FUNC2(hdmi->ddc_clk, 100000);

	/* Reset I2C controller */
	FUNC5(hdmi->field_ddc_en, 1);
	FUNC5(hdmi->field_ddc_reset, 1);
	if (FUNC4(hdmi->field_ddc_reset,
					   reg, !reg, 100, 2000)) {
		FUNC0(hdmi->ddc_clk);
		return -EIO;
	}

	FUNC5(hdmi->field_ddc_sck_en, 1);
	FUNC5(hdmi->field_ddc_sda_en, 1);

	for (i = 0; i < num; i++) {
		err = FUNC6(hdmi, &msgs[i]);
		if (err) {
			ret = err;
			break;
		}
	}

	FUNC0(hdmi->ddc_clk);
	return ret;
}