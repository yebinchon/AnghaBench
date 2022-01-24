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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ddc {int dummy; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCL ; 
 int /*<<< orphan*/  SDA ; 
 scalar_t__ FUNC0 (struct ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,struct ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ddc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(
	struct dc_context *ctx,
	struct ddc *ddc_handle,
	uint16_t clock_delay_div_4)
{
	uint32_t retry = 0;

	/* The I2C communications stop signal is:
	 * the SDA going high from low, while the SCL is high.
	 */

	FUNC3(ddc_handle, SCL, false);

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SDA, false);

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SCL, true);

	if (!FUNC2(ctx, ddc_handle, clock_delay_div_4))
		return false;

	FUNC3(ddc_handle, SDA, true);

	do {
		FUNC1(clock_delay_div_4);

		if (FUNC0(ddc_handle, SDA))
			return true;

		++retry;
	} while (retry <= 2);

	return false;
}