#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct vibra_info {int vibldrv_res; int vibrdrv_res; int viblmotor_res; int vibrmotor_res; scalar_t__ irq; TYPE_5__* dev; TYPE_2__* input_dev; int /*<<< orphan*/  play_work; TYPE_6__* supplies; int /*<<< orphan*/  twl6040; } ;
struct TYPE_14__ {struct device* parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_15__ {char* supply; int /*<<< orphan*/  consumer; } ;
struct TYPE_12__ {int version; } ;
struct TYPE_13__ {char* name; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  close; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 TYPE_2__* FUNC5 (TYPE_5__*) ; 
 struct vibra_info* FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC8 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vibra_info*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct vibra_info*) ; 
 struct device_node* FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct vibra_info*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  twl6040_vib_irq_handler ; 
 int /*<<< orphan*/  twl6040_vibra_close ; 
 int /*<<< orphan*/  vibra_play ; 
 int /*<<< orphan*/  vibra_play_work ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *twl6040_core_dev = pdev->dev.parent;
	struct device_node *twl6040_core_node;
	struct vibra_info *info;
	int vddvibl_uV = 0;
	int vddvibr_uV = 0;
	int error;

	twl6040_core_node = FUNC12(twl6040_core_dev->of_node,
						 "vibra");
	if (!twl6040_core_node) {
		FUNC3(&pdev->dev, "parent of node is missing?\n");
		return -EINVAL;
	}

	info = FUNC6(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC13(twl6040_core_node);
		FUNC3(&pdev->dev, "couldn't allocate memory\n");
		return -ENOMEM;
	}

	info->dev = &pdev->dev;

	info->twl6040 = FUNC4(pdev->dev.parent);

	FUNC14(twl6040_core_node, "ti,vibldrv-res",
			     &info->vibldrv_res);
	FUNC14(twl6040_core_node, "ti,vibrdrv-res",
			     &info->vibrdrv_res);
	FUNC14(twl6040_core_node, "ti,viblmotor-res",
			     &info->viblmotor_res);
	FUNC14(twl6040_core_node, "ti,vibrmotor-res",
			     &info->vibrmotor_res);
	FUNC14(twl6040_core_node, "ti,vddvibl-uV", &vddvibl_uV);
	FUNC14(twl6040_core_node, "ti,vddvibr-uV", &vddvibr_uV);

	FUNC13(twl6040_core_node);

	if ((!info->vibldrv_res && !info->viblmotor_res) ||
	    (!info->vibrdrv_res && !info->vibrmotor_res)) {
		FUNC3(info->dev, "invalid vibra driver/motor resistance\n");
		return -EINVAL;
	}

	info->irq = FUNC15(pdev, 0);
	if (info->irq < 0)
		return -EINVAL;

	error = FUNC8(&pdev->dev, info->irq, NULL,
					  twl6040_vib_irq_handler,
					  IRQF_ONESHOT,
					  "twl6040_irq_vib", info);
	if (error) {
		FUNC3(info->dev, "VIB IRQ request failed: %d\n", error);
		return error;
	}

	info->supplies[0].supply = "vddvibl";
	info->supplies[1].supply = "vddvibr";
	/*
	 * When booted with Device tree the regulators are attached to the
	 * parent device (twl6040 MFD core)
	 */
	error = FUNC7(twl6040_core_dev,
					FUNC0(info->supplies),
					info->supplies);
	if (error) {
		FUNC3(info->dev, "couldn't get regulators %d\n", error);
		return error;
	}

	if (vddvibl_uV) {
		error = FUNC17(info->supplies[0].consumer,
					      vddvibl_uV, vddvibl_uV);
		if (error) {
			FUNC3(info->dev, "failed to set VDDVIBL volt %d\n",
				error);
			return error;
		}
	}

	if (vddvibr_uV) {
		error = FUNC17(info->supplies[1].consumer,
					      vddvibr_uV, vddvibr_uV);
		if (error) {
			FUNC3(info->dev, "failed to set VDDVIBR volt %d\n",
				error);
			return error;
		}
	}

	FUNC1(&info->play_work, vibra_play_work);

	info->input_dev = FUNC5(&pdev->dev);
	if (!info->input_dev) {
		FUNC3(info->dev, "couldn't allocate input device\n");
		return -ENOMEM;
	}

	FUNC11(info->input_dev, info);

	info->input_dev->name = "twl6040:vibrator";
	info->input_dev->id.version = 1;
	info->input_dev->close = twl6040_vibra_close;
	FUNC2(FF_RUMBLE, info->input_dev->ffbit);

	error = FUNC9(info->input_dev, NULL, vibra_play);
	if (error) {
		FUNC3(info->dev, "couldn't register vibrator to FF\n");
		return error;
	}

	error = FUNC10(info->input_dev);
	if (error) {
		FUNC3(info->dev, "couldn't register input device\n");
		return error;
	}

	FUNC16(pdev, info);

	return 0;
}