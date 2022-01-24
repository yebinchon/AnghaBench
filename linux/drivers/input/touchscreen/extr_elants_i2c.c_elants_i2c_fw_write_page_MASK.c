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
typedef  int /*<<< orphan*/  ack_ok ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ELAN_FW_PAGESIZE ; 
 int MAX_FW_UPDATE_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct i2c_client*,int*,int) ; 
 int FUNC2 (struct i2c_client*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				    const void *page)
{
	const u8 ack_ok[] = { 0xaa, 0xaa };
	u8 buf[2];
	int retry;
	int error;

	for (retry = 0; retry < MAX_FW_UPDATE_RETRIES; retry++) {
		error = FUNC2(client, page, ELAN_FW_PAGESIZE);
		if (error) {
			FUNC0(&client->dev,
				"IAP Write Page failed: %d\n", error);
			continue;
		}

		error = FUNC1(client, buf, 2);
		if (error) {
			FUNC0(&client->dev,
				"IAP Ack read failed: %d\n", error);
			return error;
		}

		if (!FUNC3(buf, ack_ok, sizeof(ack_ok)))
			return 0;

		error = -EIO;
		FUNC0(&client->dev,
			"IAP Get Ack Error [%02x:%02x]\n",
			buf[0], buf[1]);
	}

	return error;
}