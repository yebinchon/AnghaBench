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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ period; } ;
struct thermal_cooling_device {int irq; int pulses_per_revolution; struct thermal_cooling_device* cdev; int /*<<< orphan*/  of_node; int /*<<< orphan*/  pwm_fan_max_state; int /*<<< orphan*/  pwm_fan_state; int /*<<< orphan*/  rpm_timer; int /*<<< orphan*/  sample_start; struct thermal_cooling_device* pwm; TYPE_1__ args; int /*<<< orphan*/  pwm_value; struct thermal_cooling_device* reg_en; int /*<<< orphan*/  lock; } ;
struct pwm_state {int enabled; scalar_t__ duty_cycle; } ;
struct pwm_fan_ctx {int irq; int pulses_per_revolution; struct pwm_fan_ctx* cdev; int /*<<< orphan*/  of_node; int /*<<< orphan*/  pwm_fan_max_state; int /*<<< orphan*/  pwm_fan_state; int /*<<< orphan*/  rpm_timer; int /*<<< orphan*/  sample_start; struct pwm_fan_ctx* pwm; TYPE_1__ args; int /*<<< orphan*/  pwm_value; struct pwm_fan_ctx* reg_en; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  name; struct thermal_cooling_device dev; } ;
struct device {int irq; int pulses_per_revolution; struct device* cdev; int /*<<< orphan*/  of_node; int /*<<< orphan*/  pwm_fan_max_state; int /*<<< orphan*/  pwm_fan_state; int /*<<< orphan*/  rpm_timer; int /*<<< orphan*/  sample_start; struct device* pwm; TYPE_1__ args; int /*<<< orphan*/  pwm_value; struct device* reg_en; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  MAX_PWM ; 
 int FUNC2 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_cooling_device*,char*,...) ; 
 int FUNC4 (struct thermal_cooling_device*,int /*<<< orphan*/ ,struct thermal_cooling_device*) ; 
 struct thermal_cooling_device* FUNC5 (struct thermal_cooling_device*,char*,struct thermal_cooling_device*,int /*<<< orphan*/ ) ; 
 struct thermal_cooling_device* FUNC6 (struct thermal_cooling_device*,int,int /*<<< orphan*/ ) ; 
 struct thermal_cooling_device* FUNC7 (struct thermal_cooling_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct thermal_cooling_device* FUNC8 (struct thermal_cooling_device*,char*) ; 
 int FUNC9 (struct thermal_cooling_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thermal_cooling_device*) ; 
 struct thermal_cooling_device* FUNC10 (struct thermal_cooling_device*,int /*<<< orphan*/ ,char*,struct thermal_cooling_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  pulse_handler ; 
 int FUNC17 (struct thermal_cooling_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  pwm_fan_cooling_ops ; 
 int /*<<< orphan*/  pwm_fan_groups ; 
 int FUNC18 (struct thermal_cooling_device*,struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  pwm_fan_pwm_disable ; 
 int /*<<< orphan*/  pwm_fan_regulator_disable ; 
 int /*<<< orphan*/  FUNC19 (struct thermal_cooling_device*,struct pwm_state*) ; 
 int FUNC20 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  sample_timer ; 
 int /*<<< orphan*/  FUNC21 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct thermal_cooling_device *cdev;
	struct device *dev = &pdev->dev;
	struct pwm_fan_ctx *ctx;
	struct device *hwmon;
	int ret;
	struct pwm_state state = { };
	u32 ppr = 2;

	ctx = FUNC6(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC13(&ctx->lock);

	ctx->pwm = FUNC7(dev, dev->of_node, NULL);
	if (FUNC1(ctx->pwm)) {
		ret = FUNC2(ctx->pwm);

		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Could not get PWM: %d\n", ret);

		return ret;
	}

	FUNC16(pdev, ctx);

	ctx->irq = FUNC15(pdev, 0);
	if (ctx->irq == -EPROBE_DEFER)
		return ctx->irq;

	ctx->reg_en = FUNC8(dev, "fan");
	if (FUNC1(ctx->reg_en)) {
		if (FUNC2(ctx->reg_en) != -ENODEV)
			return FUNC2(ctx->reg_en);

		ctx->reg_en = NULL;
	} else {
		ret = FUNC20(ctx->reg_en);
		if (ret) {
			FUNC3(dev, "Failed to enable fan supply: %d\n", ret);
			return ret;
		}
		ret = FUNC4(dev, pwm_fan_regulator_disable,
					       ctx->reg_en);
		if (ret)
			return ret;
	}

	ctx->pwm_value = MAX_PWM;

	/* Set duty cycle to maximum allowed and enable PWM output */
	FUNC19(ctx->pwm, &state);
	state.duty_cycle = ctx->pwm->args.period - 1;
	state.enabled = true;

	ret = FUNC17(ctx->pwm, &state);
	if (ret) {
		FUNC3(dev, "Failed to configure PWM: %d\n", ret);
		return ret;
	}
	FUNC22(&ctx->rpm_timer, sample_timer, 0);
	ret = FUNC4(dev, pwm_fan_pwm_disable, ctx);
	if (ret)
		return ret;

	FUNC14(dev->of_node, "pulses-per-revolution", &ppr);
	ctx->pulses_per_revolution = ppr;
	if (!ctx->pulses_per_revolution) {
		FUNC3(dev, "pulses-per-revolution can't be zero.\n");
		return -EINVAL;
	}

	if (ctx->irq > 0) {
		ret = FUNC9(dev, ctx->irq, pulse_handler, 0,
				       pdev->name, ctx);
		if (ret) {
			FUNC3(dev, "Failed to request interrupt: %d\n", ret);
			return ret;
		}
		ctx->sample_start = FUNC11();
		FUNC12(&ctx->rpm_timer, jiffies + HZ);
	}

	hwmon = FUNC5(dev, "pwmfan",
						       ctx, pwm_fan_groups);
	if (FUNC1(hwmon)) {
		FUNC3(dev, "Failed to register hwmon device\n");
		return FUNC2(hwmon);
	}

	ret = FUNC18(dev, ctx);
	if (ret)
		return ret;

	ctx->pwm_fan_state = ctx->pwm_fan_max_state;
	if (FUNC0(CONFIG_THERMAL)) {
		cdev = FUNC10(dev,
			dev->of_node, "pwm-fan", ctx, &pwm_fan_cooling_ops);
		if (FUNC1(cdev)) {
			ret = FUNC2(cdev);
			FUNC3(dev,
				"Failed to register pwm-fan as cooling device: %d\n",
				ret);
			return ret;
		}
		ctx->cdev = cdev;
		FUNC21(cdev);
	}

	return 0;
}