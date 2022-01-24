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
struct gpio_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  label; TYPE_1__* gdev; } ;
struct gpio_chip {int /*<<< orphan*/  (* free ) (struct gpio_chip*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  can_sleep; } ;
struct TYPE_2__ {struct gpio_chip* chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 int /*<<< orphan*/  FLAG_IS_HOGGED ; 
 int /*<<< orphan*/  FLAG_OPEN_DRAIN ; 
 int /*<<< orphan*/  FLAG_OPEN_SOURCE ; 
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct gpio_desc *desc)
{
	bool			ret = false;
	unsigned long		flags;
	struct gpio_chip	*chip;

	FUNC5();

	FUNC3(desc);

	FUNC7(&gpio_lock, flags);

	chip = desc->gdev->chip;
	if (chip && FUNC10(FLAG_REQUESTED, &desc->flags)) {
		if (chip->free) {
			FUNC8(&gpio_lock, flags);
			FUNC6(chip->can_sleep);
			chip->free(chip, FUNC2(desc));
			FUNC7(&gpio_lock, flags);
		}
		FUNC4(desc->label);
		FUNC1(desc, NULL);
		FUNC0(FLAG_ACTIVE_LOW, &desc->flags);
		FUNC0(FLAG_REQUESTED, &desc->flags);
		FUNC0(FLAG_OPEN_DRAIN, &desc->flags);
		FUNC0(FLAG_OPEN_SOURCE, &desc->flags);
		FUNC0(FLAG_IS_HOGGED, &desc->flags);
		ret = true;
	}

	FUNC8(&gpio_lock, flags);
	return ret;
}