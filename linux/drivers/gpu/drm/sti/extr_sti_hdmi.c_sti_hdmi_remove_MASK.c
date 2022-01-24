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
struct sti_hdmi {int /*<<< orphan*/  notifier; scalar_t__ audio_pdev; int /*<<< orphan*/  ddc_adapt; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sti_hdmi* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  sti_hdmi_ops ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sti_hdmi *hdmi = FUNC3(&pdev->dev);

	FUNC1(hdmi->notifier, CEC_PHYS_ADDR_INVALID);

	FUNC4(hdmi->ddc_adapt);
	if (hdmi->audio_pdev)
		FUNC5(hdmi->audio_pdev);
	FUNC2(&pdev->dev, &sti_hdmi_ops);

	FUNC0(hdmi->notifier);
	return 0;
}