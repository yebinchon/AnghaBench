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
struct cbus_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  sel; int /*<<< orphan*/  dev; int /*<<< orphan*/  dat; } ;

/* Variables and functions */
 int CBUS_ADDR_BITS ; 
 int CBUS_REG_BITS ; 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int FUNC0 (struct cbus_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct cbus_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cbus_host*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct cbus_host *host, char rw, unsigned dev,
			 unsigned reg, unsigned data)
{
	unsigned long flags;
	int ret;

	/* We don't want interrupts disturbing our transfer */
	FUNC7(&host->lock, flags);

	/* Reset state and start of transfer, SEL stays down during transfer */
	FUNC6(host->sel, 0);

	/* Set the DAT pin to output */
	FUNC5(host->dat, 1);

	/* Send the device address */
	FUNC2(host, dev, CBUS_ADDR_BITS);

	/* Send the rw flag */
	FUNC1(host, rw == I2C_SMBUS_READ);

	/* Send the register address */
	FUNC2(host, reg, CBUS_REG_BITS);

	if (rw == I2C_SMBUS_WRITE) {
		FUNC2(host, data, 16);
		ret = 0;
	} else {
		ret = FUNC4(host->dat);
		if (ret) {
			FUNC3(host->dev, "failed setting direction\n");
			goto out;
		}
		FUNC6(host->clk, 1);

		ret = FUNC0(host);
		if (ret < 0) {
			FUNC3(host->dev, "failed receiving data\n");
			goto out;
		}
	}

	/* Indicate end of transfer, SEL goes up until next transfer */
	FUNC6(host->sel, 1);
	FUNC6(host->clk, 1);
	FUNC6(host->clk, 0);

out:
	FUNC8(&host->lock, flags);

	return ret;
}