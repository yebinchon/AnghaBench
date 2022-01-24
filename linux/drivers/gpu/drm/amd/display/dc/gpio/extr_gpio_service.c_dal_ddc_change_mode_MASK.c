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
struct ddc {int /*<<< orphan*/  pin_data; int /*<<< orphan*/  pin_clock; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef  enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;

/* Variables and functions */
 int GPIO_RESULT_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

enum gpio_result FUNC2(
	struct ddc *ddc,
	enum gpio_mode mode)
{
	enum gpio_result result;

	enum gpio_mode original_mode =
		FUNC1(ddc->pin_data);

	result = FUNC0(ddc->pin_data, mode);

	/* [anaumov] DAL2 code returns GPIO_RESULT_NON_SPECIFIC_ERROR
	 * in case of failures;
	 * set_mode() is so that, in case of failure,
	 * we must explicitly set original mode */

	if (result != GPIO_RESULT_OK)
		goto failure;

	result = FUNC0(ddc->pin_clock, mode);

	if (result == GPIO_RESULT_OK)
		return result;

	FUNC0(ddc->pin_clock, original_mode);

failure:
	FUNC0(ddc->pin_data, original_mode);

	return result;
}