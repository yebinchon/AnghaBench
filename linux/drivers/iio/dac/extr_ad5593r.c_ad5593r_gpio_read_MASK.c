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
struct i2c_client {int dummy; } ;
struct ad5592r_state {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AD5593R_MODE_GPIO_READBACK ; 
 scalar_t__ FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ad5592r_state *st, u8 *value)
{
	struct i2c_client *i2c = FUNC1(st->dev);
	s32 val;

	val = FUNC0(i2c, AD5593R_MODE_GPIO_READBACK);
	if (val < 0)
		return (int) val;

	*value = (u8) val;

	return 0;
}