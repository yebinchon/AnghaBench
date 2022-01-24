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
typedef  int /*<<< orphan*/  u32 ;
struct pwm_fan_ctx {scalar_t__* pwm_fan_cooling_levels; int pwm_fan_max_state; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_PWM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 scalar_t__* FUNC1 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				       struct pwm_fan_ctx *ctx)
{
	struct device_node *np = dev->of_node;
	int num, i, ret;

	if (!FUNC2(np, "cooling-levels", NULL))
		return 0;

	ret = FUNC3(np, "cooling-levels");
	if (ret <= 0) {
		FUNC0(dev, "Wrong data!\n");
		return ret ? : -EINVAL;
	}

	num = ret;
	ctx->pwm_fan_cooling_levels = FUNC1(dev, num, sizeof(u32),
						   GFP_KERNEL);
	if (!ctx->pwm_fan_cooling_levels)
		return -ENOMEM;

	ret = FUNC4(np, "cooling-levels",
					 ctx->pwm_fan_cooling_levels, num);
	if (ret) {
		FUNC0(dev, "Property 'cooling-levels' cannot be read!\n");
		return ret;
	}

	for (i = 0; i < num; i++) {
		if (ctx->pwm_fan_cooling_levels[i] > MAX_PWM) {
			FUNC0(dev, "PWM fan state[%d]:%d > %d\n", i,
				ctx->pwm_fan_cooling_levels[i], MAX_PWM);
			return -EINVAL;
		}
	}

	ctx->pwm_fan_max_state = num - 1;

	return 0;
}