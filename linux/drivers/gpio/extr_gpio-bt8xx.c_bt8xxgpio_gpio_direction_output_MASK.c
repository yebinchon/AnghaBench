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
struct bt8xxgpio {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DATA ; 
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct bt8xxgpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gpio,
					unsigned nr, int val)
{
	struct bt8xxgpio *bg = FUNC2(gpio);
	unsigned long flags;
	u32 outen, data;

	FUNC3(&bg->lock, flags);

	outen = FUNC0(BT848_GPIO_OUT_EN);
	outen |= (1 << nr);
	FUNC1(outen, BT848_GPIO_OUT_EN);

	data = FUNC0(BT848_GPIO_DATA);
	if (val)
		data |= (1 << nr);
	else
		data &= ~(1 << nr);
	FUNC1(data, BT848_GPIO_DATA);

	FUNC4(&bg->lock, flags);

	return 0;
}