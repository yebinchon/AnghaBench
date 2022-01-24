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

/* Variables and functions */
 int /*<<< orphan*/  PIOBU_PDS ; 
 int /*<<< orphan*/  PIOBU_SOD ; 
 int FUNC0 (struct gpio_chip*,unsigned int) ; 
 int FUNC1 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int pin)
{
	/* if pin is input, read value from PDS else read from SOD */
	int ret = FUNC0(chip, pin);

	if (ret == 1)
		ret = FUNC1(chip, pin, PIOBU_PDS);
	else if (!ret)
		ret = FUNC1(chip, pin, PIOBU_SOD);

	if (ret < 0)
		return ret;

	return !!ret;
}