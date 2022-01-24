#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;
struct hdmi_context {int /*<<< orphan*/  mutex; TYPE_3__* ddc_adpt; scalar_t__ regs_hdmiphy; TYPE_2__* hdmiphy_port; int /*<<< orphan*/  reg_hdmi_en; int /*<<< orphan*/  notifier; TYPE_1__ audio; int /*<<< orphan*/  hotplug_work; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdmi_component_ops ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct hdmi_context* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct hdmi_context *hdata = FUNC8(pdev);

	FUNC1(&hdata->hotplug_work);
	FUNC3(hdata->notifier, CEC_PHYS_ADDR_INVALID);

	FUNC4(&pdev->dev, &hdmi_component_ops);
	FUNC7(hdata->audio.pdev);

	FUNC2(hdata->notifier);
	FUNC9(&pdev->dev);

	if (!FUNC0(hdata->reg_hdmi_en))
		FUNC11(hdata->reg_hdmi_en);

	if (hdata->hdmiphy_port)
		FUNC10(&hdata->hdmiphy_port->dev);

	if (hdata->regs_hdmiphy)
		FUNC5(hdata->regs_hdmiphy);

	FUNC10(&hdata->ddc_adpt->dev);

	FUNC6(&hdata->mutex);

	return 0;
}