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

/* Variables and functions */
 int /*<<< orphan*/  I2C_RXFLR ; 
 int /*<<< orphan*/  I2C_STATUS ; 
 unsigned long I2C_STATUS_TFNF ; 
 int /*<<< orphan*/  I2C_TAR ; 
 int I2C_TAR_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static short FUNC3(unsigned long bit)
{
	int loop_cntr = 1000;

	if (bit & I2C_STATUS_TFNF) {
		do {
			FUNC2(10);
		} while (!(FUNC1(I2C_STATUS) & bit) && (--loop_cntr > 0));
	} else {
		/* RXRDY handler */
		do {
			if (FUNC1(I2C_TAR) == I2C_TAR_EEPROM)
				FUNC0(20);
			else
				FUNC2(10);
		} while (!(FUNC1(I2C_RXFLR) & 0xf) && (--loop_cntr > 0));
	}

	return (loop_cntr > 0);
}