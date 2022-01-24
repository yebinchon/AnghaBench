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
typedef  int u8 ;
struct i2c_msg {int len; unsigned char* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t EDID_EXT_BLOCK_CNT ; 
 int EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 *FUNC5(struct i2c_client *client)
{
	struct i2c_adapter *adapter = client->adapter;
	unsigned char start = 0x00;
	unsigned int total_size;
	u8 *block = FUNC4(EDID_LENGTH, GFP_KERNEL);

	struct i2c_msg msgs[] = {
		{
			.addr	= client->addr,
			.flags	= 0,
			.len	= 1,
			.buf	= &start,
		}, {
			.addr	= client->addr,
			.flags	= I2C_M_RD,
			.len	= EDID_LENGTH,
			.buf	= block,
		}
	};

	if (!block)
		return NULL;

	if (FUNC2(adapter, msgs, 2) != 2) {
		FUNC0("Unable to read EDID.\n");
		goto err;
	}

	if (!FUNC1(block, 0, false, NULL)) {
		FUNC0("Invalid EDID data\n");
		goto err;
	}

	total_size = (block[EDID_EXT_BLOCK_CNT] + 1) * EDID_LENGTH;
	if (total_size > EDID_LENGTH) {
		FUNC3(block);
		block = FUNC4(total_size, GFP_KERNEL);
		if (!block)
			return NULL;

		/* Yes, read the entire buffer, and do not skip the first
		 * EDID_LENGTH bytes.
		 */
		start = 0x00;
		msgs[1].len = total_size;
		msgs[1].buf = block;

		if (FUNC2(adapter, msgs, 2) != 2) {
			FUNC0("Unable to read EDID extension blocks.\n");
			goto err;
		}
		if (!FUNC1(block, 1, false, NULL)) {
			FUNC0("Invalid EDID data\n");
			goto err;
		}
	}

	return block;

err:
	FUNC3(block);
	return NULL;
}