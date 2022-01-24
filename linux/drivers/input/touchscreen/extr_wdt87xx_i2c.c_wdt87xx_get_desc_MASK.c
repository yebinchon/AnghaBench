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
typedef  int /*<<< orphan*/  tx_buf ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WDT_COMMAND_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int*,int,int*,size_t) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 desc_idx,
			    u8 *buf, size_t len)
{
	u8 tx_buf[] = { 0x22, 0x00, 0x10, 0x0E, 0x23, 0x00 };
	int error;

	tx_buf[2] |= desc_idx & 0xF;

	error = FUNC2(client, tx_buf, sizeof(tx_buf),
				 buf, len);
	if (error) {
		FUNC0(&client->dev, "get desc failed: %d\n", error);
		return error;
	}

	if (buf[0] != len) {
		FUNC0(&client->dev, "unexpected response to get desc: %d\n",
			buf[0]);
		return -EINVAL;
	}

	FUNC1(WDT_COMMAND_DELAY_MS);

	return 0;
}