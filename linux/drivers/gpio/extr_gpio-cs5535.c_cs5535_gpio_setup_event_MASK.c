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
typedef  int uint32_t ;
struct cs5535_gpio_chip {unsigned int base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int GPIO_MAP_W ; 
 unsigned int GPIO_MAP_X ; 
 unsigned int GPIO_MAP_Y ; 
 unsigned int GPIO_MAP_Z ; 
 struct cs5535_gpio_chip cs5535_gpio_chip ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned offset, int pair, int pme)
{
	struct cs5535_gpio_chip *chip = &cs5535_gpio_chip;
	uint32_t shift = (offset % 8) * 4;
	unsigned long flags;
	uint32_t val;

	if (offset >= 24)
		offset = GPIO_MAP_W;
	else if (offset >= 16)
		offset = GPIO_MAP_Z;
	else if (offset >= 8)
		offset = GPIO_MAP_Y;
	else
		offset = GPIO_MAP_X;

	FUNC2(&chip->lock, flags);
	val = FUNC0(chip->base + offset);

	/* Clear whatever was there before */
	val &= ~(0xF << shift);

	/* Set the new value */
	val |= ((pair & 7) << shift);

	/* Set the PME bit if this is a PME event */
	if (pme)
		val |= (1 << (shift + 3));

	FUNC1(val, chip->base + offset);
	FUNC3(&chip->lock, flags);
}