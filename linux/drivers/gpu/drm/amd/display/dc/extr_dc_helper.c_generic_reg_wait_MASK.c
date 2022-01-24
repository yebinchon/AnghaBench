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
typedef  scalar_t__ uint32_t ;
struct dc_context {int /*<<< orphan*/  dce_environment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dc_context const*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 

void FUNC9(const struct dc_context *ctx,
	uint32_t addr, uint32_t shift, uint32_t mask, uint32_t condition_value,
	unsigned int delay_between_poll_us, unsigned int time_out_num_tries,
	const char *func_name, int line)
{
	uint32_t field_value;
	uint32_t reg_val;
	int i;

	/* something is terribly wrong if time out is > 200ms. (5Hz) */
	FUNC0(delay_between_poll_us * time_out_num_tries <= 3000000);

	for (i = 0; i <= time_out_num_tries; i++) {
		if (i) {
			if (delay_between_poll_us >= 1000)
				FUNC7(delay_between_poll_us/1000);
			else if (delay_between_poll_us > 0)
				FUNC8(delay_between_poll_us);
		}

		reg_val = FUNC5(ctx, addr);

		field_value = FUNC6(reg_val, mask, shift);

		if (field_value == condition_value) {
			if (i * delay_between_poll_us > 1000 &&
					!FUNC4(ctx->dce_environment))
				FUNC2("REG_WAIT taking a while: %dms in %s line:%d\n",
						delay_between_poll_us * i / 1000,
						func_name, line);
			return;
		}
	}

	FUNC3("REG_WAIT timeout %dus * %d tries - %s line:%d\n",
			delay_between_poll_us, time_out_num_tries,
			func_name, line);

	if (!FUNC4(ctx->dce_environment))
		FUNC1();
}