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
struct hw_gpio_pin {int dummy; } ;
struct hw_ddc {int dummy; } ;

/* Variables and functions */
 struct hw_ddc* FUNC0 (struct hw_gpio_pin*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_ddc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_ddc*) ; 

__attribute__((used)) static void FUNC3(
	struct hw_gpio_pin **ptr)
{
	struct hw_ddc *pin = FUNC0(*ptr);

	FUNC1(pin);

	FUNC2(pin);

	*ptr = NULL;
}