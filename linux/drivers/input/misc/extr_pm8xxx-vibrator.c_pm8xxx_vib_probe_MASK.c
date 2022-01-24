#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pm8xxx_vib {unsigned int reg_vib_drv; struct input_dev* vib_input_dev; struct pm8xxx_regs const* regs; int /*<<< orphan*/  regmap; int /*<<< orphan*/  work; } ;
struct pm8xxx_regs {unsigned int drv_en_manual_mask; int /*<<< orphan*/  drv_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int version; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; TYPE_1__ id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC3 (TYPE_2__*) ; 
 struct pm8xxx_vib* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct input_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct pm8xxx_vib*) ; 
 struct pm8xxx_regs* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct pm8xxx_vib*) ; 
 int /*<<< orphan*/  pm8xxx_vib_close ; 
 int /*<<< orphan*/  pm8xxx_vib_play_effect ; 
 int /*<<< orphan*/  pm8xxx_work_handler ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct pm8xxx_vib *vib;
	struct input_dev *input_dev;
	int error;
	unsigned int val;
	const struct pm8xxx_regs *regs;

	vib = FUNC4(&pdev->dev, sizeof(*vib), GFP_KERNEL);
	if (!vib)
		return -ENOMEM;

	vib->regmap = FUNC2(pdev->dev.parent, NULL);
	if (!vib->regmap)
		return -ENODEV;

	input_dev = FUNC3(&pdev->dev);
	if (!input_dev)
		return -ENOMEM;

	FUNC0(&vib->work, pm8xxx_work_handler);
	vib->vib_input_dev = input_dev;

	regs = FUNC9(&pdev->dev);

	/* operate in manual mode */
	error = FUNC11(vib->regmap, regs->drv_addr, &val);
	if (error < 0)
		return error;

	val &= regs->drv_en_manual_mask;
	error = FUNC12(vib->regmap, regs->drv_addr, val);
	if (error < 0)
		return error;

	vib->regs = regs;
	vib->reg_vib_drv = val;

	input_dev->name = "pm8xxx_vib_ffmemless";
	input_dev->id.version = 1;
	input_dev->close = pm8xxx_vib_close;
	FUNC8(input_dev, vib);
	FUNC7(vib->vib_input_dev, EV_FF, FF_RUMBLE);

	error = FUNC5(input_dev, NULL,
					pm8xxx_vib_play_effect);
	if (error) {
		FUNC1(&pdev->dev,
			"couldn't register vibrator as FF device\n");
		return error;
	}

	error = FUNC6(input_dev);
	if (error) {
		FUNC1(&pdev->dev, "couldn't register input device\n");
		return error;
	}

	FUNC10(pdev, vib);
	return 0;
}