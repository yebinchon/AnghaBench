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
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_IAP_CTRL_CMD ; 
 int ETP_I2C_MAIN_MODE_ON ; 
 int IAP_MODE ; 
 int MAIN_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, enum tp_mode *mode)
{
	int error;
	u16 constant;
	u8 val[3];

	error = FUNC2(client, ETP_I2C_IAP_CTRL_CMD, val);
	if (error) {
		FUNC1(&client->dev,
			"failed to read iap control register: %d\n",
			error);
		return error;
	}

	constant = FUNC3((__le16 *)val);
	FUNC0(&client->dev, "iap control reg: 0x%04x.\n", constant);

	*mode = (constant & ETP_I2C_MAIN_MODE_ON) ? MAIN_MODE : IAP_MODE;

	return 0;
}