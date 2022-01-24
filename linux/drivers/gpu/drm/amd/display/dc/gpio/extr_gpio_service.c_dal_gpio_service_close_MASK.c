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
struct hw_gpio_pin {TYPE_1__* funcs; int /*<<< orphan*/  en; int /*<<< orphan*/  id; } ;
struct gpio_service {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hw_gpio_pin*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_service*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_gpio_pin*) ; 

void FUNC3(
	struct gpio_service *service,
	struct hw_gpio_pin **ptr)
{
	struct hw_gpio_pin *pin;

	if (!ptr) {
		FUNC0(false);
		return;
	}

	pin = *ptr;

	if (pin) {
		FUNC1(service, pin->id, pin->en);

		pin->funcs->close(pin);

		*ptr = NULL;
	}
}