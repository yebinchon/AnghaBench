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
typedef  scalar_t__ u32 ;
struct gpio_chip {scalar_t__ ngpio; int /*<<< orphan*/  valid_mask; struct device_node* of_node; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip)
{
	int len, i;
	u32 start, count;
	struct device_node *np = chip->of_node;

	len = FUNC1(np,  "gpio-reserved-ranges");
	if (len < 0 || len % 2 != 0)
		return;

	for (i = 0; i < len; i += 2) {
		FUNC2(np, "gpio-reserved-ranges",
					   i, &start);
		FUNC2(np, "gpio-reserved-ranges",
					   i + 1, &count);
		if (start >= chip->ngpio || start + count >= chip->ngpio)
			continue;

		FUNC0(chip->valid_mask, start, count);
	}
}