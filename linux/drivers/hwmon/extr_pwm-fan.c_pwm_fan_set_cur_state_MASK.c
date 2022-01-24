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
struct thermal_cooling_device {int /*<<< orphan*/  device; struct pwm_fan_ctx* devdata; } ;
struct pwm_fan_ctx {unsigned long pwm_fan_max_state; unsigned long pwm_fan_state; int /*<<< orphan*/ * pwm_fan_cooling_levels; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct pwm_fan_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC2(struct thermal_cooling_device *cdev, unsigned long state)
{
	struct pwm_fan_ctx *ctx = cdev->devdata;
	int ret;

	if (!ctx || (state > ctx->pwm_fan_max_state))
		return -EINVAL;

	if (state == ctx->pwm_fan_state)
		return 0;

	ret = FUNC0(ctx, ctx->pwm_fan_cooling_levels[state]);
	if (ret) {
		FUNC1(&cdev->device, "Cannot set pwm!\n");
		return ret;
	}

	ctx->pwm_fan_state = state;

	return ret;
}