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
typedef  int /*<<< orphan*/  uint32_t ;
struct hw_hpd {int dummy; } ;
struct hw_gpio_pin {scalar_t__ mode; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;

/* Variables and functions */
 int /*<<< orphan*/  DC_HPD_SENSE_DELAYED ; 
 scalar_t__ GPIO_MODE_INTERRUPT ; 
 int GPIO_RESULT_OK ; 
 struct hw_hpd* FUNC0 (struct hw_gpio_pin const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hw_gpio_pin const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_status ; 

__attribute__((used)) static enum gpio_result FUNC3(
	const struct hw_gpio_pin *ptr,
	uint32_t *value)
{
	struct hw_hpd *hpd = FUNC0(ptr);
	uint32_t hpd_delayed = 0;

	/* in Interrupt mode we ask for SENSE bit */

	if (ptr->mode == GPIO_MODE_INTERRUPT) {

		FUNC1(int_status,
			DC_HPD_SENSE_DELAYED, &hpd_delayed);

		*value = hpd_delayed;
		return GPIO_RESULT_OK;
	}

	/* in any other modes, operate as normal GPIO */

	return FUNC2(ptr, value);
}