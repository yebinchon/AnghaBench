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
struct at91_twi_dev {int /*<<< orphan*/  twi_cwgr_reg; scalar_t__ fifo_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_TWI_CR ; 
 int /*<<< orphan*/  AT91_TWI_CWGR ; 
 int /*<<< orphan*/  AT91_TWI_FIFOEN ; 
 int /*<<< orphan*/  AT91_TWI_MSEN ; 
 int /*<<< orphan*/  AT91_TWI_SVDIS ; 
 int /*<<< orphan*/  FUNC0 (struct at91_twi_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct at91_twi_dev *dev)
{
	/* FIFO should be enabled immediately after the software reset */
	if (dev->fifo_size)
		FUNC0(dev, AT91_TWI_CR, AT91_TWI_FIFOEN);
	FUNC0(dev, AT91_TWI_CR, AT91_TWI_MSEN);
	FUNC0(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
	FUNC0(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
}