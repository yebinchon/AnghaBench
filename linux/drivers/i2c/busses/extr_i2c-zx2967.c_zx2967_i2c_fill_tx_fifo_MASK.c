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
struct zx2967_i2c {size_t residue; int /*<<< orphan*/ * cur_trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zx2967_i2c*) ; 
 int EINVAL ; 
 size_t I2C_FIFO_MAX ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zx2967_i2c*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(struct zx2967_i2c *i2c)
{
	size_t residue = i2c->residue;
	u8 *buf = i2c->cur_trans;

	if (residue == 0) {
		FUNC2(FUNC0(i2c), "residue is %d\n", (int)residue);
		return -EINVAL;
	}

	if (residue <= I2C_FIFO_MAX) {
		FUNC3(i2c, buf, REG_DATA, residue);

		/* Again update before writing to FIFO to make sure isr sees. */
		i2c->residue = 0;
		i2c->cur_trans = NULL;
	} else {
		FUNC3(i2c, buf, REG_DATA, I2C_FIFO_MAX);
		i2c->residue -= I2C_FIFO_MAX;
		i2c->cur_trans += I2C_FIFO_MAX;
	}

	FUNC1();

	return 0;
}