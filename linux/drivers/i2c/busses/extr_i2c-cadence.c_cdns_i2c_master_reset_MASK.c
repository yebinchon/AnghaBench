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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_adapter {struct cdns_i2c* algo_data; } ;
struct cdns_i2c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_I2C_CR_CLR_FIFO ; 
 int /*<<< orphan*/  CDNS_I2C_CR_HOLD ; 
 int /*<<< orphan*/  CDNS_I2C_CR_OFFSET ; 
 int /*<<< orphan*/  CDNS_I2C_IDR_OFFSET ; 
 int /*<<< orphan*/  CDNS_I2C_ISR_OFFSET ; 
 int /*<<< orphan*/  CDNS_I2C_IXR_ALL_INTR_MASK ; 
 int /*<<< orphan*/  CDNS_I2C_SR_OFFSET ; 
 int /*<<< orphan*/  CDNS_I2C_XFER_SIZE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *adap)
{
	struct cdns_i2c *id = adap->algo_data;
	u32 regval;

	/* Disable the interrupts */
	FUNC1(CDNS_I2C_IXR_ALL_INTR_MASK, CDNS_I2C_IDR_OFFSET);
	/* Clear the hold bit and fifos */
	regval = FUNC0(CDNS_I2C_CR_OFFSET);
	regval &= ~CDNS_I2C_CR_HOLD;
	regval |= CDNS_I2C_CR_CLR_FIFO;
	FUNC1(regval, CDNS_I2C_CR_OFFSET);
	/* Update the transfercount register to zero */
	FUNC1(0, CDNS_I2C_XFER_SIZE_OFFSET);
	/* Clear the interupt status register */
	regval = FUNC0(CDNS_I2C_ISR_OFFSET);
	FUNC1(regval, CDNS_I2C_ISR_OFFSET);
	/* Clear the status register */
	regval = FUNC0(CDNS_I2C_SR_OFFSET);
	FUNC1(regval, CDNS_I2C_SR_OFFSET);
}