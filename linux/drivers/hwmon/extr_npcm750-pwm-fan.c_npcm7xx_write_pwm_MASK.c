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
typedef  int /*<<< orphan*/  u16 ;
struct npcm7xx_pwm_fan_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 long NPCM7XX_PWM_CMR_MAX ; 
 struct npcm7xx_pwm_fan_data* FUNC0 (struct device*) ; 
#define  hwmon_pwm_input 128 
 int FUNC1 (struct npcm7xx_pwm_fan_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, u32 attr, int channel,
			     long val)
{
	struct npcm7xx_pwm_fan_data *data = FUNC0(dev);
	int err;

	switch (attr) {
	case hwmon_pwm_input:
		if (val < 0 || val > NPCM7XX_PWM_CMR_MAX)
			return -EINVAL;
		err = FUNC1(data, channel, (u16)val);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}