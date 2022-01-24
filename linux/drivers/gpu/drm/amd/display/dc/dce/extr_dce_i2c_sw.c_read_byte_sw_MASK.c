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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ddc {int dummy; } ;
struct dc_context {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCL ; 
 int /*<<< orphan*/  SDA ; 
 scalar_t__ FUNC0 (struct ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,struct ddc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ddc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(
	struct dc_context *ctx,
	struct ddc *ddc_handle,
	uint16_t clock_delay_div_4,
	uint8_t *byte,
	bool more)
{
	int32_t shift = 7;

	uint8_t data = 0;

	/* The data bits are read from MSB to LSB;
	 * bit is read while SCL is high
	 */

	do {
		FUNC3(ddc_handle, SCL, true);

		if (!FUNC2(ctx, ddc_handle, clock_delay_div_4))
			return false;

		if (FUNC0(ddc_handle, SDA))
			data |= (1 << shift);

		FUNC3(ddc_handle, SCL, false);

		FUNC1(clock_delay_div_4 << 1);

		--shift;
	} while (shift >= 0);

	/* read only whole byte */

	*byte = data;

	FUNC1(clock_delay_div_4);

	/* send the acknowledge bit:
	 * SDA low means ACK, SDA high means NACK
	 */

	FUNC3(ddc_handle, SDA, !more);

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SCL, true);

	if (!FUNC2(ctx, ddc_handle, clock_delay_div_4))
		return false;

	FUNC3(ddc_handle, SCL, false);

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SDA, true);

	FUNC1(clock_delay_div_4);

	return true;
}