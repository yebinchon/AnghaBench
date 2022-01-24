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
typedef  int u16 ;
struct highlander_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SMCR ; 
 int SMCR_IRIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  iic_timeout ; 
 int FUNC3 (scalar_t__) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct highlander_i2c_dev *dev)
{
	unsigned long timeout;
	u16 smcr;

	timeout = jiffies + FUNC4(iic_timeout);
	for (;;) {
		smcr = FUNC3(dev->base + SMCR);

		/*
		 * Don't bother checking ACKE here, this and the reset
		 * are handled in highlander_i2c_wait_xfer_done() when
		 * waiting for the ACK.
		 */

		if (smcr & SMCR_IRIC)
			return;
		if (FUNC5(jiffies, timeout))
			break;

		FUNC1();
		FUNC0();
	}

	FUNC2(dev->dev, "polling timed out\n");
}