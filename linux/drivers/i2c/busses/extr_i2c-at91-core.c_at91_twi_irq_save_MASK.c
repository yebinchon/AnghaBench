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
struct at91_twi_dev {int imr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_TWI_IMR ; 
 int AT91_TWI_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct at91_twi_dev*) ; 
 int FUNC1 (struct at91_twi_dev*,int /*<<< orphan*/ ) ; 

void FUNC2(struct at91_twi_dev *dev)
{
	dev->imr = FUNC1(dev, AT91_TWI_IMR) & AT91_TWI_INT_MASK;
	FUNC0(dev);
}