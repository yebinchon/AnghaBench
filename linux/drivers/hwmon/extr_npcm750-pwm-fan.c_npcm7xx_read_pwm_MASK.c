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
struct npcm7xx_pwm_fan_data {int /*<<< orphan*/  pwm_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct npcm7xx_pwm_fan_data* FUNC1 (struct device*) ; 
#define  hwmon_pwm_input 128 
 long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 attr, int channel,
			    long *val)
{
	struct npcm7xx_pwm_fan_data *data = FUNC1(dev);
	u32 pmw_ch = (channel % NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
	u32 module = (channel / NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);

	switch (attr) {
	case hwmon_pwm_input:
		*val = FUNC2
			(FUNC0(data->pwm_base, module, pmw_ch));
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}