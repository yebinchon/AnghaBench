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
struct xiic_i2c {int dummy; } ;

/* Variables and functions */
 scalar_t__ IIC_RX_FIFO_DEPTH ; 
 scalar_t__ XIIC_CR_ENABLE_DEVICE_MASK ; 
 int /*<<< orphan*/  XIIC_CR_REG_OFFSET ; 
 scalar_t__ XIIC_CR_TX_FIFO_RESET_MASK ; 
 int /*<<< orphan*/  XIIC_DGIER_OFFSET ; 
 int /*<<< orphan*/  XIIC_GINTR_ENABLE_MASK ; 
 int /*<<< orphan*/  XIIC_INTR_ARB_LOST_MASK ; 
 int /*<<< orphan*/  XIIC_RESETR_OFFSET ; 
 int /*<<< orphan*/  XIIC_RESET_MASK ; 
 int /*<<< orphan*/  XIIC_RFD_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct xiic_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct xiic_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xiic_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xiic_i2c*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xiic_i2c *i2c)
{
	FUNC2(i2c, XIIC_RESETR_OFFSET, XIIC_RESET_MASK);

	/* Set receive Fifo depth to maximum (zero based). */
	FUNC3(i2c, XIIC_RFD_REG_OFFSET, IIC_RX_FIFO_DEPTH - 1);

	/* Reset Tx Fifo. */
	FUNC3(i2c, XIIC_CR_REG_OFFSET, XIIC_CR_TX_FIFO_RESET_MASK);

	/* Enable IIC Device, remove Tx Fifo reset & disable general call. */
	FUNC3(i2c, XIIC_CR_REG_OFFSET, XIIC_CR_ENABLE_DEVICE_MASK);

	/* make sure RX fifo is empty */
	FUNC0(i2c);

	/* Enable interrupts */
	FUNC2(i2c, XIIC_DGIER_OFFSET, XIIC_GINTR_ENABLE_MASK);

	FUNC1(i2c, XIIC_INTR_ARB_LOST_MASK);
}