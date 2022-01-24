#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_desc {TYPE_1__* gdev; } ;
struct gpio_chip {int /*<<< orphan*/  (* set ) (struct gpio_chip*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_2__ {struct gpio_chip* chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct gpio_desc *desc, bool value)
{
	struct gpio_chip	*chip;

	chip = desc->gdev->chip;
	FUNC3(FUNC0(desc), 0, value);
	chip->set(chip, FUNC1(desc), value);
}