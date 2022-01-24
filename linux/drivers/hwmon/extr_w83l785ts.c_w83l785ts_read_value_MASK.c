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
typedef  int u8 ;
struct device {int dummy; } ;
struct i2c_client {TYPE_1__* adapter; struct device dev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int) ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static u8 FUNC5(struct i2c_client *client, u8 reg, u8 defval)
{
	int value, i;
	struct device *dev;
	const char *prefix;

	/*
	 * We might be called during detection, at which point the client
	 * isn't yet fully initialized, so we can't use dev_dbg on it
	 */
	if (FUNC2(client)) {
		dev = &client->dev;
		prefix = "";
	} else {
		dev = &client->adapter->dev;
		prefix = "w83l785ts: ";
	}

	/*
	 * Frequent read errors have been reported on Asus boards, so we
	 * retry on read errors. If it still fails (unlikely), return the
	 * default value requested by the caller.
	 */
	for (i = 1; i <= MAX_RETRIES; i++) {
		value = FUNC3(client, reg);
		if (value >= 0) {
			FUNC0(dev, "%sRead 0x%02x from register 0x%02x.\n",
				prefix, value, reg);
			return value;
		}
		FUNC0(dev, "%sRead failed, will retry in %d.\n", prefix, i);
		FUNC4(i);
	}

	FUNC1(dev, "%sCouldn't read value from register 0x%02x.\n", prefix,
		reg);
	return defval;
}