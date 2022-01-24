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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;
struct ad5592r_state {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int AD5593R_MODE_DAC_WRITE ; 
 int FUNC0 (struct i2c_client*,unsigned int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ad5592r_state *st, unsigned chan, u16 value)
{
	struct i2c_client *i2c = FUNC1(st->dev);

	return FUNC0(i2c,
			AD5593R_MODE_DAC_WRITE | chan, value);
}