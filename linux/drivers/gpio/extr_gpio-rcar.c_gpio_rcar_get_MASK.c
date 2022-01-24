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
typedef  int u32 ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  INDT ; 
 int /*<<< orphan*/  INOUTSEL ; 
 int /*<<< orphan*/  OUTDT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	u32 bit = FUNC0(offset);

	/* testing on r8a7790 shows that INDT does not show correct pin state
	 * when configured as output, so use OUTDT in case of output pins */
	if (FUNC1(FUNC2(chip), INOUTSEL) & bit)
		return !!(FUNC1(FUNC2(chip), OUTDT) & bit);
	else
		return !!(FUNC1(FUNC2(chip), INDT) & bit);
}