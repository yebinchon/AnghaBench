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
struct max7301 {int* port_config; int (* write ) (int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int PIN_CONFIG_MASK ; 
 int PIN_CONFIG_OUT ; 
 int FUNC0 (struct max7301*,unsigned int,int) ; 
 struct max7301* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset,
				    int value)
{
	struct max7301 *ts = FUNC1(chip);
	u8 *config;
	u8 offset_bits;
	int ret;

	/* First 4 pins are unused in the controller */
	offset += 4;
	offset_bits = (offset & 3) << 1;

	config = &ts->port_config[offset >> 2];

	FUNC2(&ts->lock);

	*config = (*config & ~(PIN_CONFIG_MASK << offset_bits))
			   | (PIN_CONFIG_OUT << offset_bits);

	ret = FUNC0(ts, offset, value);

	if (!ret)
		ret = ts->write(ts->dev, 0x08 + (offset >> 2), *config);

	FUNC3(&ts->lock);

	return ret;
}