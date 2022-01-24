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
struct pcf857x {unsigned int out; int (* write ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct pcf857x* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	struct pcf857x	*gpio = FUNC0(chip);
	unsigned	bit = 1 << offset;
	int		status;

	FUNC1(&gpio->lock);
	if (value)
		gpio->out |= bit;
	else
		gpio->out &= ~bit;
	status = gpio->write(gpio->client, gpio->out);
	FUNC2(&gpio->lock);

	return status;
}