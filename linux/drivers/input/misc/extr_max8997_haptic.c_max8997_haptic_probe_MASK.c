#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max8997_platform_data {struct max8997_haptic_platform_data* haptic_pdata; } ;
struct max8997_haptic_platform_data {int mode; int /*<<< orphan*/  pwm_channel_id; int /*<<< orphan*/  pattern_signal_period; int /*<<< orphan*/  pattern_cycle; int /*<<< orphan*/  internal_mode_pattern; int /*<<< orphan*/  pwm_divisor; int /*<<< orphan*/  type; int /*<<< orphan*/  pwm_period; } ;
struct max8997_haptic {int mode; int /*<<< orphan*/  pwm; int /*<<< orphan*/  regulator; int /*<<< orphan*/  pattern_signal_period; int /*<<< orphan*/  pattern_cycle; int /*<<< orphan*/  internal_mode_pattern; int /*<<< orphan*/  pwm_divisor; int /*<<< orphan*/  type; int /*<<< orphan*/  pwm_period; struct input_dev* input_dev; TYPE_3__* dev; int /*<<< orphan*/  client; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct max8997_dev {int /*<<< orphan*/  haptic; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct TYPE_5__ {int version; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  MAX8997_EXTERNAL_MODE 129 
#define  MAX8997_INTERNAL_MODE 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct max8997_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct max8997_platform_data* FUNC5 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC6 () ; 
 int FUNC7 (struct input_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct max8997_haptic*) ; 
 int /*<<< orphan*/  FUNC13 (struct max8997_haptic*) ; 
 struct max8997_haptic* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8997_haptic_close ; 
 int /*<<< orphan*/  max8997_haptic_play_effect ; 
 int /*<<< orphan*/  max8997_haptic_play_effect_work ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct max8997_haptic*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct max8997_dev *iodev = FUNC4(pdev->dev.parent);
	const struct max8997_platform_data *pdata =
					FUNC5(iodev->dev);
	const struct max8997_haptic_platform_data *haptic_pdata = NULL;
	struct max8997_haptic *chip;
	struct input_dev *input_dev;
	int error;

	if (pdata)
		haptic_pdata = pdata->haptic_pdata;

	if (!haptic_pdata) {
		FUNC3(&pdev->dev, "no haptic platform data\n");
		return -EINVAL;
	}

	chip = FUNC14(sizeof(struct max8997_haptic), GFP_KERNEL);
	input_dev = FUNC6();
	if (!chip || !input_dev) {
		FUNC3(&pdev->dev, "unable to allocate memory\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	FUNC0(&chip->work, max8997_haptic_play_effect_work);
	FUNC15(&chip->mutex);

	chip->client = iodev->haptic;
	chip->dev = &pdev->dev;
	chip->input_dev = input_dev;
	chip->pwm_period = haptic_pdata->pwm_period;
	chip->type = haptic_pdata->type;
	chip->mode = haptic_pdata->mode;
	chip->pwm_divisor = haptic_pdata->pwm_divisor;

	switch (chip->mode) {
	case MAX8997_INTERNAL_MODE:
		chip->internal_mode_pattern =
				haptic_pdata->internal_mode_pattern;
		chip->pattern_cycle = haptic_pdata->pattern_cycle;
		chip->pattern_signal_period =
				haptic_pdata->pattern_signal_period;
		break;

	case MAX8997_EXTERNAL_MODE:
		chip->pwm = FUNC19(haptic_pdata->pwm_channel_id,
					"max8997-haptic");
		if (FUNC1(chip->pwm)) {
			error = FUNC2(chip->pwm);
			FUNC3(&pdev->dev,
				"unable to request PWM for haptic, error: %d\n",
				error);
			goto err_free_mem;
		}

		/*
		 * FIXME: pwm_apply_args() should be removed when switching to
		 * the atomic PWM API.
		 */
		FUNC17(chip->pwm);
		break;

	default:
		FUNC3(&pdev->dev,
			"Invalid chip mode specified (%d)\n", chip->mode);
		error = -EINVAL;
		goto err_free_mem;
	}

	chip->regulator = FUNC20(&pdev->dev, "inmotor");
	if (FUNC1(chip->regulator)) {
		error = FUNC2(chip->regulator);
		FUNC3(&pdev->dev,
			"unable to get regulator, error: %d\n",
			error);
		goto err_free_pwm;
	}

	input_dev->name = "max8997-haptic";
	input_dev->id.version = 1;
	input_dev->dev.parent = &pdev->dev;
	input_dev->close = max8997_haptic_close;
	FUNC12(input_dev, chip);
	FUNC11(input_dev, EV_FF, FF_RUMBLE);

	error = FUNC7(input_dev, NULL,
				max8997_haptic_play_effect);
	if (error) {
		FUNC3(&pdev->dev,
			"unable to create FF device, error: %d\n",
			error);
		goto err_put_regulator;
	}

	error = FUNC10(input_dev);
	if (error) {
		FUNC3(&pdev->dev,
			"unable to register input device, error: %d\n",
			error);
		goto err_destroy_ff;
	}

	FUNC16(pdev, chip);
	return 0;

err_destroy_ff:
	FUNC8(input_dev);
err_put_regulator:
	FUNC21(chip->regulator);
err_free_pwm:
	if (chip->mode == MAX8997_EXTERNAL_MODE)
		FUNC18(chip->pwm);
err_free_mem:
	FUNC9(input_dev);
	FUNC13(chip);

	return error;
}