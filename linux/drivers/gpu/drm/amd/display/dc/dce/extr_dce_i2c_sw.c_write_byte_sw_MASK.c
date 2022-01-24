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
 int /*<<< orphan*/  FUNC0 (struct ddc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,struct ddc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ddc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(
	struct dc_context *ctx,
	struct ddc *ddc_handle,
	uint16_t clock_delay_div_4,
	uint8_t byte)
{
	int32_t shift = 7;
	bool ack;

	/* bits are transmitted serially, starting from MSB */

	do {
		FUNC1(clock_delay_div_4);

		FUNC3(ddc_handle, SDA, (byte >> shift) & 1);

		FUNC1(clock_delay_div_4);

		FUNC3(ddc_handle, SCL, true);

		if (!FUNC2(ctx, ddc_handle, clock_delay_div_4))
			return false;

		FUNC3(ddc_handle, SCL, false);

		--shift;
	} while (shift >= 0);

	/* The display sends ACK by preventing the SDA from going high
	 * after the SCL pulse we use to send our last data bit.
	 * If the SDA goes high after that bit, it's a NACK
	 */

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SDA, true);

	FUNC1(clock_delay_div_4);

	FUNC3(ddc_handle, SCL, true);

	if (!FUNC2(ctx, ddc_handle, clock_delay_div_4))
		return false;

	/* read ACK bit */

	ack = !FUNC0(ddc_handle, SDA);

	FUNC1(clock_delay_div_4 << 1);

	FUNC3(ddc_handle, SCL, false);

	FUNC1(clock_delay_div_4 << 1);

	return ack;
}