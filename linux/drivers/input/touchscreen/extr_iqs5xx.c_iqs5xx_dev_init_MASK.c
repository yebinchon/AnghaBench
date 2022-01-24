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
typedef  scalar_t__ u8 ;
struct iqs5xx_private {int bl_status; } ;
struct iqs5xx_dev_id_info {scalar_t__ major_ver; int bl_status; int /*<<< orphan*/  proj_num; int /*<<< orphan*/  prod_num; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IQS5XX_BL_STATUS_AVAIL 134 
#define  IQS5XX_BL_STATUS_NONE 133 
 int /*<<< orphan*/  IQS5XX_END_COMM ; 
 scalar_t__ IQS5XX_EVENT_MODE ; 
 scalar_t__ IQS5XX_MAJOR_VER_MIN ; 
 int /*<<< orphan*/  IQS5XX_PROD_NUM ; 
#define  IQS5XX_PROD_NUM_IQS525 132 
#define  IQS5XX_PROD_NUM_IQS550 131 
#define  IQS5XX_PROD_NUM_IQS572 130 
#define  IQS5XX_PROJ_NUM_A000 129 
#define  IQS5XX_PROJ_NUM_B000 128 
 scalar_t__ IQS5XX_SETUP_COMPLETE ; 
 scalar_t__ IQS5XX_SW_INPUT_EVENT ; 
 int /*<<< orphan*/  IQS5XX_SYS_CFG0 ; 
 int /*<<< orphan*/  IQS5XX_SYS_CFG1 ; 
 scalar_t__ IQS5XX_TP_EVENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct iqs5xx_private* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct iqs5xx_private *iqs5xx = FUNC2(client);
	struct iqs5xx_dev_id_info *dev_id_info;
	int error;
	u8 val;
	u8 buf[sizeof(*dev_id_info) + 1];

	error = FUNC5(client, IQS5XX_PROD_NUM,
				  &buf[1], sizeof(*dev_id_info));
	if (error)
		return FUNC4(client);

	/*
	 * A000 and B000 devices use 8-bit and 16-bit addressing, respectively.
	 * Querying an A000 device's version information with 16-bit addressing
	 * gives the appearance that the data is shifted by one byte; a nonzero
	 * leading array element suggests this could be the case (in which case
	 * the missing zero is prepended).
	 */
	buf[0] = 0;
	dev_id_info = (struct iqs5xx_dev_id_info *)&buf[(buf[1] > 0) ? 0 : 1];

	switch (FUNC0(dev_id_info->prod_num)) {
	case IQS5XX_PROD_NUM_IQS550:
	case IQS5XX_PROD_NUM_IQS572:
	case IQS5XX_PROD_NUM_IQS525:
		break;
	default:
		FUNC1(&client->dev, "Unrecognized product number: %u\n",
			FUNC0(dev_id_info->prod_num));
		return -EINVAL;
	}

	switch (FUNC0(dev_id_info->proj_num)) {
	case IQS5XX_PROJ_NUM_A000:
		FUNC1(&client->dev, "Unsupported project number: %u\n",
			FUNC0(dev_id_info->proj_num));
		return FUNC4(client);
	case IQS5XX_PROJ_NUM_B000:
		break;
	default:
		FUNC1(&client->dev, "Unrecognized project number: %u\n",
			FUNC0(dev_id_info->proj_num));
		return -EINVAL;
	}

	if (dev_id_info->major_ver < IQS5XX_MAJOR_VER_MIN) {
		FUNC1(&client->dev, "Unsupported major version: %u\n",
			dev_id_info->major_ver);
		return FUNC4(client);
	}

	switch (dev_id_info->bl_status) {
	case IQS5XX_BL_STATUS_AVAIL:
	case IQS5XX_BL_STATUS_NONE:
		break;
	default:
		FUNC1(&client->dev,
			"Unrecognized bootloader status: 0x%02X\n",
			dev_id_info->bl_status);
		return -EINVAL;
	}

	error = FUNC3(client);
	if (error)
		return error;

	error = FUNC6(client, IQS5XX_SYS_CFG0, &val);
	if (error)
		return error;

	val |= IQS5XX_SETUP_COMPLETE;
	val &= ~IQS5XX_SW_INPUT_EVENT;
	error = FUNC7(client, IQS5XX_SYS_CFG0, val);
	if (error)
		return error;

	val = IQS5XX_TP_EVENT | IQS5XX_EVENT_MODE;
	error = FUNC7(client, IQS5XX_SYS_CFG1, val);
	if (error)
		return error;

	error = FUNC7(client, IQS5XX_END_COMM, 0);
	if (error)
		return error;

	iqs5xx->bl_status = dev_id_info->bl_status;

	/*
	 * Closure of the first communication window that appears following the
	 * release of reset appears to kick off an initialization period during
	 * which further communication is met with clock stretching. The return
	 * from this function is delayed so that further communication attempts
	 * avoid this period.
	 */
	FUNC8(100);

	return 0;
}