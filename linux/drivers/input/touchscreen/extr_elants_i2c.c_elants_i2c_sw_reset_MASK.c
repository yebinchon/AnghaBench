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
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  soft_rst_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	const u8 soft_rst_cmd[] = { 0x77, 0x77, 0x77, 0x77 };
	int error;

	error = FUNC1(client, soft_rst_cmd,
				sizeof(soft_rst_cmd));
	if (error) {
		FUNC0(&client->dev, "software reset failed: %d\n", error);
		return error;
	}

	/*
	 * We should wait at least 10 msec (but no more than 40) before
	 * sending fastboot or IAP command to the device.
	 */
	FUNC2(30);

	return 0;
}