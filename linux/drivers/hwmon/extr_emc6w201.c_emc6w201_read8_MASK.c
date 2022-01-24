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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u8 FUNC3(struct i2c_client *client, u8 reg)
{
	int val;

	val = FUNC1(client, reg);
	if (FUNC2(val < 0)) {
		FUNC0(&client->dev, "%d-bit %s failed at 0x%02x\n",
			8, "read", reg);
		return 0x00;	/* Arbitrary value */
	}

	return val;
}