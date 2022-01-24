#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_8__ dev; } ;
struct max77693_haptic {int suspend_state; int dev_type; TYPE_4__* input_dev; int /*<<< orphan*/  motor_reg; int /*<<< orphan*/  pwm_dev; int /*<<< orphan*/  work; int /*<<< orphan*/  regmap_haptic; int /*<<< orphan*/  mode; int /*<<< orphan*/  type; TYPE_8__* dev; int /*<<< orphan*/  regmap_pmic; } ;
struct max77693_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  regmap_haptic; } ;
struct TYPE_15__ {TYPE_8__* parent; } ;
struct TYPE_14__ {int version; } ;
struct TYPE_17__ {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; } ;
struct TYPE_16__ {int driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX77693_HAPTIC_EXTERNAL_MODE ; 
 int /*<<< orphan*/  MAX77693_HAPTIC_LRA ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  TYPE_MAX77693 129 
#define  TYPE_MAX77843 128 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,char*,...) ; 
 struct max77693_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_8__*) ; 
 struct max77693_haptic* FUNC6 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,char*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct max77693_haptic*) ; 
 int /*<<< orphan*/  max77693_haptic_close ; 
 int /*<<< orphan*/  max77693_haptic_open ; 
 int /*<<< orphan*/  max77693_haptic_play_effect ; 
 int /*<<< orphan*/  max77693_haptic_play_work ; 
 TYPE_3__* FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct max77693_haptic*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct max77693_dev *max77693 = FUNC4(pdev->dev.parent);
	struct max77693_haptic *haptic;
	int error;

	haptic = FUNC6(&pdev->dev, sizeof(*haptic), GFP_KERNEL);
	if (!haptic)
		return -ENOMEM;

	haptic->regmap_pmic = max77693->regmap;
	haptic->dev = &pdev->dev;
	haptic->type = MAX77693_HAPTIC_LRA;
	haptic->mode = MAX77693_HAPTIC_EXTERNAL_MODE;
	haptic->suspend_state = false;

	/* Variant-specific init */
	haptic->dev_type = FUNC13(pdev)->driver_data;
	switch (haptic->dev_type) {
	case TYPE_MAX77693:
		haptic->regmap_haptic = max77693->regmap_haptic;
		break;
	case TYPE_MAX77843:
		haptic->regmap_haptic = max77693->regmap;
		break;
	default:
		FUNC3(&pdev->dev, "unsupported device type: %u\n",
			haptic->dev_type);
		return -EINVAL;
	}

	FUNC0(&haptic->work, max77693_haptic_play_work);

	/* Get pwm and regulatot for haptic device */
	haptic->pwm_dev = FUNC7(&pdev->dev, NULL);
	if (FUNC1(haptic->pwm_dev)) {
		FUNC3(&pdev->dev, "failed to get pwm device\n");
		return FUNC2(haptic->pwm_dev);
	}

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to the
	 * atomic PWM API.
	 */
	FUNC15(haptic->pwm_dev);

	haptic->motor_reg = FUNC8(&pdev->dev, "haptic");
	if (FUNC1(haptic->motor_reg)) {
		FUNC3(&pdev->dev, "failed to get regulator\n");
		return FUNC2(haptic->motor_reg);
	}

	/* Initialize input device for haptic device */
	haptic->input_dev = FUNC5(&pdev->dev);
	if (!haptic->input_dev) {
		FUNC3(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	haptic->input_dev->name = "max77693-haptic";
	haptic->input_dev->id.version = 1;
	haptic->input_dev->dev.parent = &pdev->dev;
	haptic->input_dev->open = max77693_haptic_open;
	haptic->input_dev->close = max77693_haptic_close;
	FUNC12(haptic->input_dev, haptic);
	FUNC11(haptic->input_dev, EV_FF, FF_RUMBLE);

	error = FUNC9(haptic->input_dev, NULL,
				max77693_haptic_play_effect);
	if (error) {
		FUNC3(&pdev->dev, "failed to create force-feedback\n");
		return error;
	}

	error = FUNC10(haptic->input_dev);
	if (error) {
		FUNC3(&pdev->dev, "failed to register input device\n");
		return error;
	}

	FUNC14(pdev, haptic);

	return 0;
}