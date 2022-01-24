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
typedef  size_t u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  checksum_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  RAYDIUM_ACK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int*) ; 
 int FUNC2 (struct i2c_client*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				      size_t length, u16 checksum)
{
	u8 checksum_cmd[] = { 0x00, 0x05, 0x6D, 0x00, 0x00, 0x00, 0x00 };
	int error;

	FUNC1(length, &checksum_cmd[3]);
	FUNC1(checksum, &checksum_cmd[5]);

	error = FUNC2(client,
					 checksum_cmd, sizeof(checksum_cmd),
					 RAYDIUM_ACK_NULL);
	if (error) {
		FUNC0(&client->dev, "failed to write checksum: %d\n",
			error);
		return error;
	}

	return 0;
}