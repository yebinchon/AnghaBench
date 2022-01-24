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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cy8ctmg110 {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct cy8ctmg110 *tsc, unsigned char reg,
		unsigned char len, unsigned char *value)
{
	struct i2c_client *client = tsc->client;
	int ret;
	unsigned char i2c_data[6];

	FUNC0(len > 5);

	i2c_data[0] = reg;
	FUNC3(i2c_data + 1, value, len);

	ret = FUNC2(client, i2c_data, len + 1);
	if (ret != len + 1) {
		FUNC1(&client->dev, "i2c write data cmd failed\n");
		return ret < 0 ? ret : -EIO;
	}

	return 0;
}