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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_hdmi {int /*<<< orphan*/  vdda_reg; int /*<<< orphan*/  core; int /*<<< orphan*/  phy; int /*<<< orphan*/  wp; int /*<<< orphan*/  audio_playing_lock; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct omap_hdmi*) ; 
 int /*<<< orphan*/  hdmi5_component_ops ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct omap_hdmi*) ; 
 int FUNC9 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  hdmi_irq_handler ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct omap_hdmi*) ; 
 struct omap_hdmi* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct omap_hdmi *hdmi;
	int irq;
	int r;

	hdmi = FUNC14(sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->pdev = pdev;

	FUNC4(&pdev->dev, hdmi);

	FUNC15(&hdmi->lock);
	FUNC19(&hdmi->audio_playing_lock);

	r = FUNC9(hdmi);
	if (r)
		goto err_free;

	r = FUNC12(pdev, &hdmi->wp, 5);
	if (r)
		goto err_free;

	r = FUNC11(pdev, &hdmi->phy, 5);
	if (r)
		goto err_free;

	r = FUNC7(pdev, &hdmi->core);
	if (r)
		goto err_free;

	irq = FUNC16(pdev, 0);
	if (irq < 0) {
		FUNC0("platform_get_irq failed\n");
		r = -ENODEV;
		goto err_free;
	}

	r = FUNC6(&pdev->dev, irq,
			NULL, hdmi_irq_handler,
			IRQF_ONESHOT, "OMAP HDMI", hdmi);
	if (r) {
		FUNC0("HDMI IRQ request failed\n");
		goto err_free;
	}

	hdmi->vdda_reg = FUNC5(&pdev->dev, "vdda");
	if (FUNC1(hdmi->vdda_reg)) {
		r = FUNC2(hdmi->vdda_reg);
		if (r != -EPROBE_DEFER)
			FUNC0("can't get VDDA regulator\n");
		goto err_free;
	}

	FUNC18(&pdev->dev);

	r = FUNC8(hdmi);
	if (r)
		goto err_pm_disable;

	r = FUNC3(&pdev->dev, &hdmi5_component_ops);
	if (r)
		goto err_uninit_output;

	return 0;

err_uninit_output:
	FUNC10(hdmi);
err_pm_disable:
	FUNC17(&pdev->dev);
err_free:
	FUNC13(hdmi);
	return r;
}