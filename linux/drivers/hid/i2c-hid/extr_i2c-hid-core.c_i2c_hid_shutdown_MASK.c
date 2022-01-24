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
struct i2c_hid {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_HID_PWR_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct i2c_hid*) ; 
 struct i2c_hid* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct i2c_hid *ihid = FUNC1(client);

	FUNC2(client, I2C_HID_PWR_SLEEP);
	FUNC0(client->irq, ihid);
}