#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int slave_adr; int operation; int count; } ;
struct nmk_i2c_dev {TYPE_1__ cli; scalar_t__ stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  I2C_MCR_A7 ; 
 int /*<<< orphan*/  I2C_MCR_AM ; 
 int /*<<< orphan*/  I2C_MCR_EA10 ; 
 int /*<<< orphan*/  I2C_MCR_LENGTH ; 
 int /*<<< orphan*/  I2C_MCR_OP ; 
 int /*<<< orphan*/  I2C_MCR_SB ; 
 int /*<<< orphan*/  I2C_MCR_STOP ; 
 int I2C_M_TEN ; 
 int I2C_READ ; 
 int I2C_WRITE ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct nmk_i2c_dev *dev, u16 flags)
{
	u32 mcr = 0;
	unsigned short slave_adr_3msb_bits;

	mcr |= FUNC0(dev->cli.slave_adr, I2C_MCR_A7, 1);

	if (FUNC1(flags & I2C_M_TEN)) {
		/* 10-bit address transaction */
		mcr |= FUNC0(2, I2C_MCR_AM, 12);
		/*
		 * Get the top 3 bits.
		 * EA10 represents extended address in MCR. This includes
		 * the extension (MSB bits) of the 7 bit address loaded
		 * in A7
		 */
		slave_adr_3msb_bits = (dev->cli.slave_adr >> 7) & 0x7;

		mcr |= FUNC0(slave_adr_3msb_bits, I2C_MCR_EA10, 8);
	} else {
		/* 7-bit address transaction */
		mcr |= FUNC0(1, I2C_MCR_AM, 12);
	}

	/* start byte procedure not applied */
	mcr |= FUNC0(0, I2C_MCR_SB, 11);

	/* check the operation, master read/write? */
	if (dev->cli.operation == I2C_WRITE)
		mcr |= FUNC0(I2C_WRITE, I2C_MCR_OP, 0);
	else
		mcr |= FUNC0(I2C_READ, I2C_MCR_OP, 0);

	/* stop or repeated start? */
	if (dev->stop)
		mcr |= FUNC0(1, I2C_MCR_STOP, 14);
	else
		mcr &= ~(FUNC0(1, I2C_MCR_STOP, 14));

	mcr |= FUNC0(dev->cli.count, I2C_MCR_LENGTH, 15);

	return mcr;
}