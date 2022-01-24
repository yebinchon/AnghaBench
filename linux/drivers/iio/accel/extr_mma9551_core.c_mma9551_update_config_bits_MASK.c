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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct i2c_client *client, u8 app_id,
			       u16 reg, u8 mask, u8 val)
{
	int ret;
	u8 tmp, orig;

	ret = FUNC0(client, app_id, reg, &orig);
	if (ret < 0)
		return ret;

	tmp = orig & ~mask;
	tmp |= val & mask;

	if (tmp == orig)
		return 0;

	return FUNC1(client, app_id, reg, tmp);
}