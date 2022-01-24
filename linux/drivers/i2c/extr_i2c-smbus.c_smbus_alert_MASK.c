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
struct i2c_smbus_alert {struct i2c_client* ara; } ;
struct i2c_client {TYPE_1__* adapter; int /*<<< orphan*/  dev; } ;
struct alert_data {int data; int addr; int /*<<< orphan*/  type; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_PROTOCOL_SMBUS_ALERT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct alert_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  smbus_do_alert ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct i2c_smbus_alert *alert = d;
	struct i2c_client *ara;
	unsigned short prev_addr = 0;	/* Not a valid address */

	ara = alert->ara;

	for (;;) {
		s32 status;
		struct alert_data data;

		/*
		 * Devices with pending alerts reply in address order, low
		 * to high, because of slave transmit arbitration.  After
		 * responding, an SMBus device stops asserting SMBALERT#.
		 *
		 * Note that SMBus 2.0 reserves 10-bit addresses for future
		 * use.  We neither handle them, nor try to use PEC here.
		 */
		status = FUNC3(ara);
		if (status < 0)
			break;

		data.data = status & 1;
		data.addr = status >> 1;
		data.type = I2C_PROTOCOL_SMBUS_ALERT;

		if (data.addr == prev_addr) {
			FUNC1(&ara->dev, "Duplicate SMBALERT# from dev "
				"0x%02x, skipping\n", data.addr);
			break;
		}
		FUNC0(&ara->dev, "SMBALERT# from dev 0x%02x, flag %d\n",
			data.addr, data.data);

		/* Notify driver for the device which issued the alert */
		FUNC2(&ara->adapter->dev, &data,
				      smbus_do_alert);
		prev_addr = data.addr;
	}

	return IRQ_HANDLED;
}