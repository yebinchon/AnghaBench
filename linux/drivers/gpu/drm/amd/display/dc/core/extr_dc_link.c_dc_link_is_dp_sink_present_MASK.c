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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct ddc {int /*<<< orphan*/  pin_clock; } ;
struct dc_link {int /*<<< orphan*/  ddc; int /*<<< orphan*/  link_id; } ;
typedef  enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef  enum connector_id { ____Placeholder_connector_id } connector_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int CONNECTOR_ID_DISPLAY_PORT ; 
 int CONNECTOR_ID_EDP ; 
 int /*<<< orphan*/  GPIO_DDC_CONFIG_TYPE_MODE_I2C ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 scalar_t__ GPIO_RESULT_OK ; 
 int /*<<< orphan*/  FUNC2 (struct ddc*) ; 
 scalar_t__ FUNC3 (struct ddc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ddc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ddc**) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

bool FUNC9(struct dc_link *link)
{
	enum gpio_result gpio_result;
	uint32_t clock_pin = 0;
	uint8_t retry = 0;
	struct ddc *ddc;

	enum connector_id connector_id =
		FUNC7(link->link_id);

	bool present =
		((connector_id == CONNECTOR_ID_DISPLAY_PORT) ||
		(connector_id == CONNECTOR_ID_EDP));

	ddc = FUNC4(link->ddc);

	if (!ddc) {
		FUNC1();
		return present;
	}

	/* Open GPIO and set it to I2C mode */
	/* Note: this GpioMode_Input will be converted
	 * to GpioConfigType_I2cAuxDualMode in GPIO component,
	 * which indicates we need additional delay */

	if (GPIO_RESULT_OK != FUNC3(
		ddc, GPIO_MODE_INPUT, GPIO_DDC_CONFIG_TYPE_MODE_I2C)) {
		FUNC5(&ddc);

		return present;
	}

	/*
	 * Read GPIO: DP sink is present if both clock and data pins are zero
	 *
	 * [W/A] plug-unplug DP cable, sometimes customer board has
	 * one short pulse on clk_pin(1V, < 1ms). DP will be config to HDMI/DVI
	 * then monitor can't br light up. Add retry 3 times
	 * But in real passive dongle, it need additional 3ms to detect
	 */
	do {
		gpio_result = FUNC6(ddc->pin_clock, &clock_pin);
		FUNC0(gpio_result == GPIO_RESULT_OK);
		if (clock_pin)
			FUNC8(1000);
		else
			break;
	} while (retry++ < 3);

	present = (gpio_result == GPIO_RESULT_OK) && !clock_pin;

	FUNC2(ddc);

	return present;
}