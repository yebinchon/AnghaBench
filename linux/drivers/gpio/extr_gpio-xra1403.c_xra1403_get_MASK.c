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
struct xra1403 {int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  XRA_GSR ; 
 struct xra1403* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset)
{
	int ret;
	unsigned int val;
	struct xra1403 *xra = FUNC1(chip);

	ret = FUNC2(xra->regmap, FUNC3(XRA_GSR, offset), &val);
	if (ret)
		return ret;

	return !!(val & FUNC0(offset % 8));
}