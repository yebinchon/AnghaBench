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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ETP_I2C_IAP_CMD ; 
 int ETP_I2C_IAP_PASSWORD ; 
 int IAP_MODE ; 
 int MAIN_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct i2c_client*,int*) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	int error;
	enum tp_mode mode;
	u8 val[3];
	u16 password;

	/* Get FW in which mode	(IAP_MODE/MAIN_MODE)  */
	error = FUNC1(client, &mode);
	if (error)
		return error;

	if (mode == IAP_MODE) {
		/* Reset IC */
		error = FUNC2(client);
		if (error)
			return error;

		FUNC6(30);
	}

	/* Set flash key*/
	error = FUNC4(client);
	if (error)
		return error;

	/* Wait for F/W IAP initialization */
	FUNC6(mode == MAIN_MODE ? 100 : 30);

	/* Check if we are in IAP mode or not */
	error = FUNC1(client, &mode);
	if (error)
		return error;

	if (mode == MAIN_MODE) {
		FUNC0(dev, "wrong mode: %d\n", mode);
		return -EIO;
	}

	/* Set flash key again */
	error = FUNC4(client);
	if (error)
		return error;

	/* Wait for F/W IAP initialization */
	FUNC6(30);

	/* read back to check we actually enabled successfully. */
	error = FUNC3(client, ETP_I2C_IAP_CMD, val);
	if (error) {
		FUNC0(dev, "cannot read iap password: %d\n",
			error);
		return error;
	}

	password = FUNC5((__le16 *)val);
	if (password != ETP_I2C_IAP_PASSWORD) {
		FUNC0(dev, "wrong iap password: 0x%X\n", password);
		return -EIO;
	}

	return 0;
}