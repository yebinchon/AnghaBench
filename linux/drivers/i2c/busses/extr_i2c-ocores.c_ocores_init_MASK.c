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
struct ocores_i2c {int ip_clock_khz; int bus_clock_khz; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OCI2C_CMD ; 
 int OCI2C_CMD_IACK ; 
 int /*<<< orphan*/  OCI2C_CONTROL ; 
 int OCI2C_CTRL_EN ; 
 int OCI2C_CTRL_IEN ; 
 int /*<<< orphan*/  OCI2C_PREHIGH ; 
 int /*<<< orphan*/  OCI2C_PRELOW ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int FUNC3 (struct ocores_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocores_i2c*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct ocores_i2c *i2c)
{
	int prescale;
	int diff;
	u8 ctrl = FUNC3(i2c, OCI2C_CONTROL);

	/* make sure the device is disabled */
	ctrl &= ~(OCI2C_CTRL_EN | OCI2C_CTRL_IEN);
	FUNC4(i2c, OCI2C_CONTROL, ctrl);

	prescale = (i2c->ip_clock_khz / (5 * i2c->bus_clock_khz)) - 1;
	prescale = FUNC1(prescale, 0, 0xffff);

	diff = i2c->ip_clock_khz / (5 * (prescale + 1)) - i2c->bus_clock_khz;
	if (FUNC0(diff) > i2c->bus_clock_khz / 10) {
		FUNC2(dev,
			"Unsupported clock settings: core: %d KHz, bus: %d KHz\n",
			i2c->ip_clock_khz, i2c->bus_clock_khz);
		return -EINVAL;
	}

	FUNC4(i2c, OCI2C_PRELOW, prescale & 0xff);
	FUNC4(i2c, OCI2C_PREHIGH, prescale >> 8);

	/* Init the device */
	FUNC4(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
	FUNC4(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_EN);

	return 0;
}