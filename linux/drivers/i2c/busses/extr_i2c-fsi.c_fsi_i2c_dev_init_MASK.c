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
struct fsi_i2c_master {int /*<<< orphan*/  fsi; scalar_t__ fifo_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ I2C_DEFAULT_CLK_DIV ; 
 int /*<<< orphan*/  I2C_ESTAT_FIFO_SZ ; 
 scalar_t__ I2C_FIFO_HI_LVL ; 
 scalar_t__ I2C_FIFO_LO_LVL ; 
 int /*<<< orphan*/  I2C_FSI_ESTAT ; 
 int /*<<< orphan*/  I2C_FSI_INT_MASK ; 
 int /*<<< orphan*/  I2C_FSI_MODE ; 
 int /*<<< orphan*/  I2C_FSI_WATER_MARK ; 
 int /*<<< orphan*/  I2C_MODE_CLKDIV ; 
 int /*<<< orphan*/  I2C_MODE_ENHANCED ; 
 int /*<<< orphan*/  I2C_WATERMARK_HI ; 
 int /*<<< orphan*/  I2C_WATERMARK_LO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fsi_i2c_master *i2c)
{
	int rc;
	u32 mode = I2C_MODE_ENHANCED, extended_status, watermark;
	u32 interrupt = 0;

	/* since we use polling, disable interrupts */
	rc = FUNC3(i2c->fsi, I2C_FSI_INT_MASK, &interrupt);
	if (rc)
		return rc;

	mode |= FUNC1(I2C_MODE_CLKDIV, I2C_DEFAULT_CLK_DIV);
	rc = FUNC3(i2c->fsi, I2C_FSI_MODE, &mode);
	if (rc)
		return rc;

	rc = FUNC2(i2c->fsi, I2C_FSI_ESTAT, &extended_status);
	if (rc)
		return rc;

	i2c->fifo_size = FUNC0(I2C_ESTAT_FIFO_SZ, extended_status);
	watermark = FUNC1(I2C_WATERMARK_HI,
			       i2c->fifo_size - I2C_FIFO_HI_LVL);
	watermark |= FUNC1(I2C_WATERMARK_LO, I2C_FIFO_LO_LVL);

	return FUNC3(i2c->fsi, I2C_FSI_WATER_MARK, &watermark);
}