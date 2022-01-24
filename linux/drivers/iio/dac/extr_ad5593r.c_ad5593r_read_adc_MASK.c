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
typedef  scalar_t__ u16 ;
struct i2c_client {int dummy; } ;
struct ad5592r_state {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int AD5592R_REG_ADC_SEQ ; 
 int /*<<< orphan*/  AD5593R_MODE_ADC_READBACK ; 
 int AD5593R_MODE_CONF ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad5592r_state *st, unsigned chan, u16 *value)
{
	struct i2c_client *i2c = FUNC3(st->dev);
	s32 val;

	val = FUNC2(i2c,
			AD5593R_MODE_CONF | AD5592R_REG_ADC_SEQ, FUNC0(chan));
	if (val < 0)
		return (int) val;

	val = FUNC1(i2c, AD5593R_MODE_ADC_READBACK);
	if (val < 0)
		return (int) val;

	*value = (u16) val;

	return 0;
}