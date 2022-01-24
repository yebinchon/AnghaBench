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
struct ttl_module {int porta_shadow; int portb_shadow; int portc_shadow; int /*<<< orphan*/  lock; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct ttl_module* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gpio, unsigned offset)
{
	struct ttl_module *mod = FUNC1(gpio->parent);
	u8 *shadow;
	int ret;

	if (offset < 8) {
		shadow = &mod->porta_shadow;
	} else if (offset < 16) {
		shadow = &mod->portb_shadow;
		offset -= 8;
	} else {
		shadow = &mod->portc_shadow;
		offset -= 16;
	}

	FUNC2(&mod->lock);
	ret = *shadow & FUNC0(offset);
	FUNC3(&mod->lock);
	return !!ret;
}