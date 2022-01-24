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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct npcm7xx_pwm_fan_data {int /*<<< orphan*/ * pwm_lock; int /*<<< orphan*/  pwm_base; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t NPCM7XX_PWM_CTRL_CH0_EN_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH0_INV_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH1_EN_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH1_INV_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH2_EN_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH2_INV_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH3_EN_BIT ; 
 size_t NPCM7XX_PWM_CTRL_CH3_INV_BIT ; 
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct npcm7xx_pwm_fan_data *data,
				  int channel, u16 val)
{
	u32 pwm_ch = (channel % NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
	u32 module = (channel / NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
	u32 tmp_buf, ctrl_en_bit, env_bit;

	/*
	 * Config PWM Comparator register for setting duty cycle
	 */
	FUNC4(&data->pwm_lock[module]);

	/* write new CMR value  */
	FUNC3(val, FUNC0(data->pwm_base, module, pwm_ch));
	tmp_buf = FUNC2(FUNC1(data->pwm_base, module));

	switch (pwm_ch) {
	case 0:
		ctrl_en_bit = NPCM7XX_PWM_CTRL_CH0_EN_BIT;
		env_bit = NPCM7XX_PWM_CTRL_CH0_INV_BIT;
		break;
	case 1:
		ctrl_en_bit = NPCM7XX_PWM_CTRL_CH1_EN_BIT;
		env_bit = NPCM7XX_PWM_CTRL_CH1_INV_BIT;
		break;
	case 2:
		ctrl_en_bit = NPCM7XX_PWM_CTRL_CH2_EN_BIT;
		env_bit = NPCM7XX_PWM_CTRL_CH2_INV_BIT;
		break;
	case 3:
		ctrl_en_bit = NPCM7XX_PWM_CTRL_CH3_EN_BIT;
		env_bit = NPCM7XX_PWM_CTRL_CH3_INV_BIT;
		break;
	default:
		FUNC5(&data->pwm_lock[module]);
		return -ENODEV;
	}

	if (val == 0) {
		/* Disable PWM */
		tmp_buf &= ~ctrl_en_bit;
		tmp_buf |= env_bit;
	} else {
		/* Enable PWM */
		tmp_buf |= ctrl_en_bit;
		tmp_buf &= ~env_bit;
	}

	FUNC3(tmp_buf, FUNC1(data->pwm_base, module));
	FUNC5(&data->pwm_lock[module]);

	return 0;
}