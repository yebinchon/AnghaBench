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
struct mmc35240_data {int res; int* axis_scale; int /*<<< orphan*/ * axis_coef; int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  otp_data ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC35240_CTRL1_BW_MASK ; 
 int MMC35240_CTRL1_BW_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MMC35240_OTP_START_ADDR ; 
 int /*<<< orphan*/  MMC35240_REG_CTRL1 ; 
 int /*<<< orphan*/  MMC35240_REG_ID ; 
 scalar_t__ MMC35240_WAIT_SET_RESET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct mmc35240_data*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct mmc35240_data *data)
{
	int ret, y_convert, z_convert;
	unsigned int reg_id;
	u8 otp_data[6];

	ret = FUNC9(data->regmap, MMC35240_REG_ID, &reg_id);
	if (ret < 0) {
		FUNC6(&data->client->dev, "Error reading product id\n");
		return ret;
	}

	FUNC5(&data->client->dev, "MMC35240 chip id %x\n", reg_id);

	/*
	 * make sure we restore sensor characteristics, by doing
	 * a SET/RESET sequence, the axis polarity being naturally
	 * aligned after RESET
	 */
	ret = FUNC7(data, true);
	if (ret < 0)
		return ret;
	FUNC11(MMC35240_WAIT_SET_RESET, MMC35240_WAIT_SET_RESET + 1);

	ret = FUNC7(data, false);
	if (ret < 0)
		return ret;

	/* set default sampling frequency */
	ret = FUNC10(data->regmap, MMC35240_REG_CTRL1,
				 MMC35240_CTRL1_BW_MASK,
				 data->res << MMC35240_CTRL1_BW_SHIFT);
	if (ret < 0)
		return ret;

	ret = FUNC8(data->regmap, MMC35240_OTP_START_ADDR,
			       (u8 *)otp_data, sizeof(otp_data));
	if (ret < 0)
		return ret;

	y_convert = FUNC0(((otp_data[1] & 0x03) << 4) |
					   (otp_data[2] >> 4));
	z_convert = FUNC1(otp_data[3] & 0x3f);

	data->axis_coef[0] = FUNC2(1);
	data->axis_coef[1] = FUNC3(y_convert);
	data->axis_coef[2] = FUNC4(z_convert);

	data->axis_scale[0] = 1;
	data->axis_scale[1] = 1000;
	data->axis_scale[2] = 10000;

	return 0;
}