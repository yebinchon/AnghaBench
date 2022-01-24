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
struct lpc2k_i2c {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ LPC24XX_I2CONSET ; 
 int LPC24XX_SI ; 
 int /*<<< orphan*/  FUNC0 (struct lpc2k_i2c*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct lpc2k_i2c *i2c = dev_id;

	if (FUNC1(i2c->base + LPC24XX_I2CONSET) & LPC24XX_SI) {
		FUNC0(i2c);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}