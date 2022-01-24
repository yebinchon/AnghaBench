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
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  XRA_OCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct xra1403* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned int offset, int value)
{
	int ret;
	struct xra1403 *xra = FUNC2(chip);

	ret = FUNC3(xra->regmap, FUNC4(XRA_OCR, offset),
			FUNC0(offset % 8), value ? FUNC0(offset % 8) : 0);
	if (ret)
		FUNC1(chip->parent, "Failed to set pin: %d, ret: %d\n",
				offset, ret);
}