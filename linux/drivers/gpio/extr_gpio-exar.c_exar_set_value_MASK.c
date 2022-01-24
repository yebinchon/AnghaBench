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
struct gpio_chip {int dummy; } ;
struct exar_gpio_chip {unsigned int first_pin; } ;

/* Variables and functions */
 unsigned int EXAR_OFFSET_MPIOLVL_HI ; 
 unsigned int EXAR_OFFSET_MPIOLVL_LO ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,int,unsigned int) ; 
 struct exar_gpio_chip* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned int offset,
			   int value)
{
	struct exar_gpio_chip *exar_gpio = FUNC1(chip);
	unsigned int addr = (offset + exar_gpio->first_pin) / 8 ?
		EXAR_OFFSET_MPIOLVL_HI : EXAR_OFFSET_MPIOLVL_LO;
	unsigned int bit  = (offset + exar_gpio->first_pin) % 8;

	FUNC0(chip, addr, value, bit);
}