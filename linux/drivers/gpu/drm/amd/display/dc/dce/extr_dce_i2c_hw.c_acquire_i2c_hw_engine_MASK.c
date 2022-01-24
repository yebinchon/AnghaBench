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
typedef  int uint32_t ;
struct resource_pool {int i2c_hw_buffer_in_use; struct dce_i2c_hw** hw_i2cs; TYPE_2__* res_cap; } ;
struct TYPE_3__ {scalar_t__ hw_supported; } ;
struct ddc {TYPE_1__ hw_info; } ;
struct dce_i2c_hw {int original_speed; struct ddc* ddc; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef  enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;
struct TYPE_4__ {int num_ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DDC_CONFIG_TYPE_MODE_I2C ; 
 int /*<<< orphan*/  GPIO_MODE_HARDWARE ; 
 int GPIO_RESULT_OK ; 
 int FUNC0 (struct ddc*) ; 
 int FUNC1 (struct ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dce_i2c_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_i2c_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_i2c_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct dce_i2c_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

struct dce_i2c_hw *FUNC7(
	struct resource_pool *pool,
	struct ddc *ddc)
{
	uint32_t counter = 0;
	enum gpio_result result;
	uint32_t current_speed;
	struct dce_i2c_hw *dce_i2c_hw = NULL;

	if (!ddc)
		return NULL;

	if (ddc->hw_info.hw_supported) {
		enum gpio_ddc_line line = FUNC0(ddc);

		if (line < pool->res_cap->num_ddc)
			dce_i2c_hw = pool->hw_i2cs[line];
	}

	if (!dce_i2c_hw)
		return NULL;

	if (pool->i2c_hw_buffer_in_use || !FUNC3(dce_i2c_hw))
		return NULL;

	do {
		result = FUNC1(ddc, GPIO_MODE_HARDWARE,
			GPIO_DDC_CONFIG_TYPE_MODE_I2C);

		if (result == GPIO_RESULT_OK)
			break;

		/* i2c_engine is busy by VBios, lets wait and retry */

		FUNC6(10);

		++counter;
	} while (counter < 2);

	if (result != GPIO_RESULT_OK)
		return NULL;

	dce_i2c_hw->ddc = ddc;

	current_speed = FUNC2(dce_i2c_hw);

	if (current_speed)
		dce_i2c_hw->original_speed = current_speed;

	if (!FUNC5(dce_i2c_hw)) {
		FUNC4(dce_i2c_hw);
		return NULL;
	}

	pool->i2c_hw_buffer_in_use = true;
	return dce_i2c_hw;
}