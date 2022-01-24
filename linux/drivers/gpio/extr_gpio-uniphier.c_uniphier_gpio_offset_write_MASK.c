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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip,
				       unsigned int offset, unsigned int reg,
				       int val)
{
	unsigned int bank;
	u32 mask;

	FUNC1(offset, &bank, &mask);

	FUNC0(chip, bank, reg, mask, val ? mask : 0);
}