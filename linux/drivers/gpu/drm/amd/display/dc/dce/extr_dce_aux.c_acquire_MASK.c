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
struct ddc {int dummy; } ;
struct dce_aux {struct ddc* ddc; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DDC_CONFIG_TYPE_MODE_AUX ; 
 int /*<<< orphan*/  GPIO_MODE_HARDWARE ; 
 int GPIO_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct dce_aux*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddc*) ; 
 int FUNC2 (struct ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_aux*) ; 

__attribute__((used)) static bool FUNC4(
	struct dce_aux *engine,
	struct ddc *ddc)
{
	enum gpio_result result;

	if (!FUNC3(engine))
		return false;

	result = FUNC2(ddc, GPIO_MODE_HARDWARE,
		GPIO_DDC_CONFIG_TYPE_MODE_AUX);

	if (result != GPIO_RESULT_OK)
		return false;

	if (!FUNC0(engine)) {
		FUNC1(ddc);
		return false;
	}

	engine->ddc = ddc;

	return true;
}