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
typedef  int u32 ;
struct npcm7xx_pwm_fan_data {int pwm_clk_freq; int /*<<< orphan*/  pwm_base; int /*<<< orphan*/  pwm_clk; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MIN_PRESCALE1 ; 
 int NPCM7XX_PWM_COUNTER_DEFAULT_NUM ; 
 int NPCM7XX_PWM_CTRL_MODE_DEFAULT ; 
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ; 
 int NPCM7XX_PWM_MAX_MODULES ; 
 int NPCM7XX_PWM_PRESCALE2_DEFAULT ; 
 int NPCM7XX_PWM_PRESCALE_SHIFT_CH01 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PWM_OUTPUT_FREQ_25KHZ ; 
 int PWN_CNT_DEFAULT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct npcm7xx_pwm_fan_data *data)
{
	int m, ch;
	u32 prescale_val, output_freq;

	data->pwm_clk_freq = FUNC5(data->pwm_clk);

	/* Adjust NPCM7xx PWMs output frequency to ~25Khz */
	output_freq = data->pwm_clk_freq / PWN_CNT_DEFAULT;
	prescale_val = FUNC0(output_freq, PWM_OUTPUT_FREQ_25KHZ);

	/* If prescale_val = 0, then the prescale output clock is stopped */
	if (prescale_val < MIN_PRESCALE1)
		prescale_val = MIN_PRESCALE1;
	/*
	 * prescale_val need to decrement in one because in the PWM Prescale
	 * register the Prescale value increment by one
	 */
	prescale_val--;

	/* Setting PWM Prescale Register value register to both modules */
	prescale_val |= (prescale_val << NPCM7XX_PWM_PRESCALE_SHIFT_CH01);

	for (m = 0; m < NPCM7XX_PWM_MAX_MODULES  ; m++) {
		FUNC6(prescale_val, FUNC4(data->pwm_base, m));
		FUNC6(NPCM7XX_PWM_PRESCALE2_DEFAULT,
			  FUNC3(data->pwm_base, m));
		FUNC6(NPCM7XX_PWM_CTRL_MODE_DEFAULT,
			  FUNC2(data->pwm_base, m));

		for (ch = 0; ch < NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE; ch++) {
			FUNC6(NPCM7XX_PWM_COUNTER_DEFAULT_NUM,
				  FUNC1(data->pwm_base, m, ch));
		}
	}

	return output_freq / ((prescale_val & 0xf) + 1);
}