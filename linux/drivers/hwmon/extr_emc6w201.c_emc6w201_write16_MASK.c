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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,scalar_t__) ; 
 int FUNC1 (struct i2c_client*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, u8 reg, u16 val)
{
	int err;

	err = FUNC1(client, reg, val & 0xff);
	if (FUNC2(!err))
		err = FUNC1(client, reg + 1, val >> 8);
	if (FUNC3(err < 0))
		FUNC0(&client->dev, "%d-bit %s failed at 0x%02x\n",
			16, "write", reg);

	return err;
}