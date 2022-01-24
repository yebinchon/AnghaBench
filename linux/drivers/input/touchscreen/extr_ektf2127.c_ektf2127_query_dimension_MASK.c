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
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int EKTF2127_HEIGHT ; 
 int EKTF2127_REQUEST ; 
 int EKTF2127_RESPONSE ; 
 int EKTF2127_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,int,...) ; 
 int FUNC1 (struct i2c_client*,int*,int) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, bool width)
{
	struct device *dev = &client->dev;
	const char *what = width ? "width" : "height";
	u8 what_code = width ? EKTF2127_WIDTH : EKTF2127_HEIGHT;
	u8 buf[4];
	int ret;
	int error;

	/* Request dimension */
	buf[0] = EKTF2127_REQUEST;
	buf[1] = width ? EKTF2127_WIDTH : EKTF2127_HEIGHT;
	buf[2] = 0x00;
	buf[3] = 0x00;
	ret = FUNC2(client, buf, sizeof(buf));
	if (ret != sizeof(buf)) {
		error = ret < 0 ? ret : -EIO;
		FUNC0(dev, "Failed to request %s: %d\n", what, error);
		return error;
	}

	FUNC3(20);

	/* Read response */
	ret = FUNC1(client, buf, sizeof(buf));
	if (ret != sizeof(buf)) {
		error = ret < 0 ? ret : -EIO;
		FUNC0(dev, "Failed to receive %s data: %d\n", what, error);
		return error;
	}

	if (buf[0] != EKTF2127_RESPONSE || buf[1] != what_code) {
		FUNC0(dev, "Unexpected %s data: %#02x %#02x\n",
			what, buf[0], buf[1]);
		return -EIO;
	}

	return (((buf[3] & 0xf0) << 4) | buf[2]) - 1;
}