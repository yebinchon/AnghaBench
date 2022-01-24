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
 int /*<<< orphan*/  RM_RESET_DELAY_MSEC ; 
 int /*<<< orphan*/  RM_RESET_MSG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	const u8 soft_rst_cmd = 0x01;
	int error;

	error = FUNC2(client, RM_RESET_MSG_ADDR,
					 &soft_rst_cmd, sizeof(soft_rst_cmd));
	if (error) {
		FUNC0(&client->dev, "software reset failed: %d\n", error);
		return error;
	}

	FUNC1(RM_RESET_DELAY_MSEC);

	return 0;
}