#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct npcm7xx_pwm_fan_data {int fan_select; TYPE_1__ fan_timer; int /*<<< orphan*/  fan_base; scalar_t__* fan_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPCM7XX_FAN_CMPA ; 
 int /*<<< orphan*/  NPCM7XX_FAN_CMPB ; 
 int NPCM7XX_FAN_MAX_MODULE ; 
 int /*<<< orphan*/  NPCM7XX_FAN_POLL_TIMER_200MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NPCM7XX_FAN_TCNT ; 
 int /*<<< orphan*/  NPCM7XX_FAN_TICLR_CLEAR_ALL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  fan_timer ; 
 struct npcm7xx_pwm_fan_data* FUNC4 (struct npcm7xx_pwm_fan_data*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct npcm7xx_pwm_fan_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct npcm7xx_pwm_fan_data *data;
	int i;

	data = FUNC4(data, t, fan_timer);

	/*
	 * Polling two module per one round,
	 * FAN01 & FAN89 / FAN23 & FAN1011 / FAN45 & FAN1213 / FAN67 & FAN1415
	 */
	for (i = data->fan_select; i < NPCM7XX_FAN_MAX_MODULE;
	      i = i + 4) {
		/* clear the flag and reset the counter (TCNT) */
		FUNC6(NPCM7XX_FAN_TICLR_CLEAR_ALL,
			 FUNC2(data->fan_base, i));

		if (data->fan_present[i * 2]) {
			FUNC5(NPCM7XX_FAN_TCNT,
				  FUNC0(data->fan_base, i));
			FUNC8(data, i, NPCM7XX_FAN_CMPA);
		}
		if (data->fan_present[(i * 2) + 1]) {
			FUNC5(NPCM7XX_FAN_TCNT,
				  FUNC1(data->fan_base, i));
			FUNC8(data, i, NPCM7XX_FAN_CMPB);
		}
	}

	data->fan_select++;
	data->fan_select &= 0x3;

	/* reset the timer interval */
	data->fan_timer.expires = jiffies +
		FUNC7(NPCM7XX_FAN_POLL_TIMER_200MS);
	FUNC3(&data->fan_timer);
}