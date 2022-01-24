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
typedef  int u32 ;
struct mpc_i2c {int interrupt; int /*<<< orphan*/  dev; int /*<<< orphan*/  queue; scalar_t__ base; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR_MEN ; 
 int CSR_MAL ; 
 int CSR_MCF ; 
 int CSR_MIF ; 
 int CSR_RXAK ; 
 int EAGAIN ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ MPC_I2C_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mpc_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mpc_i2c *i2c, unsigned timeout, int writing)
{
	unsigned long orig_jiffies = jiffies;
	u32 cmd_err;
	int result = 0;

	if (!i2c->irq) {
		while (!(FUNC1(i2c->base + MPC_I2C_SR) & CSR_MIF)) {
			FUNC2();
			if (FUNC3(jiffies, orig_jiffies + timeout)) {
				FUNC0(i2c->dev, "timeout\n");
				FUNC7(i2c, 0);
				result = -ETIMEDOUT;
				break;
			}
		}
		cmd_err = FUNC1(i2c->base + MPC_I2C_SR);
		FUNC6(0, i2c->base + MPC_I2C_SR);
	} else {
		/* Interrupt mode */
		result = FUNC5(i2c->queue,
			(i2c->interrupt & CSR_MIF), timeout);

		if (FUNC4(!(i2c->interrupt & CSR_MIF))) {
			FUNC0(i2c->dev, "wait timeout\n");
			FUNC7(i2c, 0);
			result = -ETIMEDOUT;
		}

		cmd_err = i2c->interrupt;
		i2c->interrupt = 0;
	}

	if (result < 0)
		return result;

	if (!(cmd_err & CSR_MCF)) {
		FUNC0(i2c->dev, "unfinished\n");
		return -EIO;
	}

	if (cmd_err & CSR_MAL) {
		FUNC0(i2c->dev, "MAL\n");
		return -EAGAIN;
	}

	if (writing && (cmd_err & CSR_RXAK)) {
		FUNC0(i2c->dev, "No RXAK\n");
		/* generate stop */
		FUNC7(i2c, CCR_MEN);
		return -ENXIO;
	}
	return 0;
}