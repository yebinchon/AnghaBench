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
struct tpic2810 {int buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPIC2810_WS_COMMAND ; 
 struct tpic2810* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, u8 mask, u8 bits)
{
	struct tpic2810 *gpio = FUNC0(chip);
	u8 buffer;
	int err;

	FUNC2(&gpio->lock);

	buffer = gpio->buffer & ~mask;
	buffer |= (mask & bits);

	err = FUNC1(gpio->client, TPIC2810_WS_COMMAND,
					buffer);
	if (!err)
		gpio->buffer = buffer;

	FUNC3(&gpio->lock);
}