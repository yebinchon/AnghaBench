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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int len; scalar_t__* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct adv7511 {unsigned int current_edid_segment; int edid_read; scalar_t__* edid_buf; TYPE_1__* i2c_edid; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_REG_DDC_STATUS ; 
 int /*<<< orphan*/  ADV7511_REG_EDID_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ I2C_M_RD ; 
 int FUNC1 (struct adv7511*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(void *data, u8 *buf, unsigned int block,
				  size_t len)
{
	struct adv7511 *adv7511 = data;
	struct i2c_msg xfer[2];
	uint8_t offset;
	unsigned int i;
	int ret;

	if (len > 128)
		return -EINVAL;

	if (adv7511->current_edid_segment != block / 2) {
		unsigned int status;

		ret = FUNC4(adv7511->regmap, ADV7511_REG_DDC_STATUS,
				  &status);
		if (ret < 0)
			return ret;

		if (status != 2) {
			adv7511->edid_read = false;
			FUNC5(adv7511->regmap, ADV7511_REG_EDID_SEGMENT,
				     block);
			ret = FUNC1(adv7511, 200);
			if (ret < 0)
				return ret;
		}

		/* Break this apart, hopefully more I2C controllers will
		 * support 64 byte transfers than 256 byte transfers
		 */

		xfer[0].addr = adv7511->i2c_edid->addr;
		xfer[0].flags = 0;
		xfer[0].len = 1;
		xfer[0].buf = &offset;
		xfer[1].addr = adv7511->i2c_edid->addr;
		xfer[1].flags = I2C_M_RD;
		xfer[1].len = 64;
		xfer[1].buf = adv7511->edid_buf;

		offset = 0;

		for (i = 0; i < 4; ++i) {
			ret = FUNC2(adv7511->i2c_edid->adapter, xfer,
					   FUNC0(xfer));
			if (ret < 0)
				return ret;
			else if (ret != 2)
				return -EIO;

			xfer[1].buf += 64;
			offset += 64;
		}

		adv7511->current_edid_segment = block / 2;
	}

	if (block % 2 == 0)
		FUNC3(buf, adv7511->edid_buf, len);
	else
		FUNC3(buf, adv7511->edid_buf + 128, len);

	return 0;
}