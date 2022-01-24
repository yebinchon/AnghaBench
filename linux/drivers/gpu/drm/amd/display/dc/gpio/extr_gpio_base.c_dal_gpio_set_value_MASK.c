#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct gpio {TYPE_2__* pin; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* set_value ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int GPIO_RESULT_NULL_HANDLE ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

enum gpio_result FUNC2(
	const struct gpio *gpio,
	uint32_t value)
{
	if (!gpio->pin) {
		FUNC0();
		return GPIO_RESULT_NULL_HANDLE;
	}

	return gpio->pin->funcs->set_value(gpio->pin, value);
}