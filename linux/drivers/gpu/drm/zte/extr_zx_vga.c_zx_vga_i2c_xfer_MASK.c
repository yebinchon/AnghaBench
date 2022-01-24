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
struct zx_vga_i2c {int /*<<< orphan*/  lock; } ;
struct zx_vga {struct zx_vga_i2c* ddc; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 struct zx_vga* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zx_vga*,struct i2c_msg*) ; 
 int FUNC4 (struct zx_vga*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg *msgs,
			   int num)
{
	struct zx_vga *vga = FUNC0(adap);
	struct zx_vga_i2c *ddc = vga->ddc;
	int ret = 0;
	int i;

	FUNC1(&ddc->lock);

	for (i = 0; i < num; i++) {
		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC3(vga, &msgs[i]);
		else
			ret = FUNC4(vga, &msgs[i]);

		if (ret < 0)
			break;
	}

	if (!ret)
		ret = num;

	FUNC2(&ddc->lock);

	return ret;
}