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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u16 reg, u8 value)
{
	int err;

	err = FUNC2(client, reg >> 8);
	if (err < 0)
		return err;

	err = FUNC1(client, reg & 0xff, value);
	if (err < 0)
		FUNC0(&client->dev,
			"Failed to write to register 0x%03x, err %d\n",
			(int)reg, err);
	return err;
}