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
struct wmt_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int CSR_READY_MASK ; 
 int EBUSY ; 
 scalar_t__ REG_CSR ; 
 unsigned long WMT_I2C_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct wmt_i2c_dev *i2c_dev)
{
	unsigned long timeout;

	timeout = jiffies + WMT_I2C_TIMEOUT;
	while (!(FUNC2(i2c_dev->base + REG_CSR) & CSR_READY_MASK)) {
		if (FUNC3(jiffies, timeout)) {
			FUNC0(i2c_dev->dev, "timeout waiting for bus ready\n");
			return -EBUSY;
		}
		FUNC1(20);
	}

	return 0;
}