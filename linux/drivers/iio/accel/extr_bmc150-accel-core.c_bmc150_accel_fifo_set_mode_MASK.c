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
struct device {int dummy; } ;
struct bmc150_accel_data {int /*<<< orphan*/  watermark; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fifo_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_REG_FIFO_CONFIG0 ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_FIFO_CONFIG1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bmc150_accel_data *data)
{
	struct device *dev = FUNC1(data->regmap);
	u8 reg = BMC150_ACCEL_REG_FIFO_CONFIG1;
	int ret;

	ret = FUNC2(data->regmap, reg, data->fifo_mode);
	if (ret < 0) {
		FUNC0(dev, "Error writing reg_fifo_config1\n");
		return ret;
	}

	if (!data->fifo_mode)
		return 0;

	ret = FUNC2(data->regmap, BMC150_ACCEL_REG_FIFO_CONFIG0,
			   data->watermark);
	if (ret < 0)
		FUNC0(dev, "Error writing reg_fifo_config0\n");

	return ret;
}