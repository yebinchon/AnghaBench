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
typedef  int u8 ;
struct pca953x_chip {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int BANK_SZ ; 
 int FUNC0 (struct pca953x_chip*) ; 
 scalar_t__ PCA957X_TYPE ; 
 int PCAL_GPIO_MASK ; 
 int PCAL_PINCTRL_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int REG_ADDR_AI ; 
 int FUNC2 (struct pca953x_chip*) ; 

__attribute__((used)) static u8 FUNC3(struct pca953x_chip *chip, int reg, int off,
			      bool write, bool addrinc)
{
	int bank_shift = FUNC2(chip);
	int addr = (reg & PCAL_GPIO_MASK) << bank_shift;
	int pinctrl = (reg & PCAL_PINCTRL_MASK) << 1;
	u8 regaddr = pinctrl | addr | (off / BANK_SZ);

	/* Single byte read doesn't need AI bit set. */
	if (!addrinc)
		return regaddr;

	/* Chips with 24 and more GPIOs always support Auto Increment */
	if (write && FUNC0(chip) > 2)
		regaddr |= REG_ADDR_AI;

	/* PCA9575 needs address-increment on multi-byte writes */
	if (FUNC1(chip->driver_data) == PCA957X_TYPE)
		regaddr |= REG_ADDR_AI;

	return regaddr;
}