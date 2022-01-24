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
typedef  int /*<<< orphan*/  leave_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  RAYDIUM_ACK_NULL ; 
 int /*<<< orphan*/  RM_BOOT_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	static const u8 leave_cmd[] = { 0x05, 0x00 };
	int error;

	error = FUNC2(client, leave_cmd, sizeof(leave_cmd),
					 RAYDIUM_ACK_NULL);
	if (error) {
		FUNC0(&client->dev, "leave bl command failed: %d\n", error);
		return error;
	}

	FUNC1(RM_BOOT_DELAY_MS);
	return 0;
}