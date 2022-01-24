#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ en; } ;
struct hw_gpio {TYPE_3__ store; } ;
struct TYPE_7__ {int type; int data_en_bit_present; int clock_en_bit_present; } ;
struct TYPE_8__ {TYPE_1__ ddc; } ;
struct gpio_config_data {TYPE_2__ config; int /*<<< orphan*/  type; } ;
struct ddc {TYPE_4__* pin_data; TYPE_4__* pin_clock; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef  enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;
typedef  enum gpio_ddc_config_type { ____Placeholder_gpio_ddc_config_type } gpio_ddc_config_type ;
struct TYPE_10__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct hw_gpio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_CONFIG_TYPE_DDC ; 
 int /*<<< orphan*/  GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE ; 
 int GPIO_MODE_INPUT ; 
 int GPIO_RESULT_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,struct gpio_config_data*) ; 

enum gpio_result FUNC5(
	struct ddc *ddc,
	enum gpio_mode mode,
	enum gpio_ddc_config_type config_type)
{
	enum gpio_result result;

	struct gpio_config_data config_data;
	struct hw_gpio *hw_data;
	struct hw_gpio *hw_clock;

	result = FUNC3(ddc->pin_data, mode);

	if (result != GPIO_RESULT_OK) {
		FUNC0();
		return result;
	}

	result = FUNC3(ddc->pin_clock, mode);

	if (result != GPIO_RESULT_OK) {
		FUNC0();
		goto failure;
	}

	/* DDC clock and data pins should belong
	 * to the same DDC block id,
	 * we use the data pin to set the pad mode. */

	if (mode == GPIO_MODE_INPUT)
		/* this is from detect_sink_type,
		 * we need extra delay there */
		config_data.type = GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE;
	else
		config_data.type = GPIO_CONFIG_TYPE_DDC;

	config_data.config.ddc.type = config_type;

	hw_data = FUNC1(ddc->pin_data->pin);
	hw_clock = FUNC1(ddc->pin_clock->pin);

	config_data.config.ddc.data_en_bit_present = hw_data->store.en != 0;
	config_data.config.ddc.clock_en_bit_present = hw_clock->store.en != 0;

	result = FUNC4(ddc->pin_data, &config_data);

	if (result == GPIO_RESULT_OK)
		return result;

	FUNC0();

	FUNC2(ddc->pin_clock);

failure:
	FUNC2(ddc->pin_data);

	return result;
}