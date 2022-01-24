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
struct arizona_extcon_info {int /*<<< orphan*/  hpdet_work; scalar_t__ micd_clamp; int /*<<< orphan*/  micd_pol_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  micvdd; struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ARIZONA_IRQ_HPDET ; 
 int ARIZONA_IRQ_JD_FALL ; 
 int ARIZONA_IRQ_JD_RISE ; 
 int ARIZONA_IRQ_MICDET ; 
 int ARIZONA_IRQ_MICD_CLAMP_FALL ; 
 int ARIZONA_IRQ_MICD_CLAMP_RISE ; 
 int /*<<< orphan*/  ARIZONA_JACK_DETECT_ANALOGUE ; 
 int /*<<< orphan*/  ARIZONA_JD1_ENA ; 
 int /*<<< orphan*/  ARIZONA_MICD_CLAMP_CONTROL ; 
 int /*<<< orphan*/  ARIZONA_MICD_CLAMP_MODE_MASK ; 
 int /*<<< orphan*/  ARIZONA_MICD_ENA ; 
 int /*<<< orphan*/  ARIZONA_MIC_DETECT_1 ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona*,int,struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct arizona_extcon_info* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct arizona_extcon_info *info = FUNC6(pdev);
	struct arizona *arizona = info->arizona;
	int jack_irq_rise, jack_irq_fall;
	bool change;
	int ret;

	ret = FUNC10(arizona->regmap, ARIZONA_MIC_DETECT_1,
				       ARIZONA_MICD_ENA, 0,
				       &change);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to disable micd on remove: %d\n",
			ret);
	} else if (change) {
		FUNC11(info->micvdd);
		FUNC8(info->dev);
	}

	FUNC5(info->micd_pol_gpio);

	FUNC7(&pdev->dev);

	FUNC9(arizona->regmap,
			   ARIZONA_MICD_CLAMP_CONTROL,
			   ARIZONA_MICD_CLAMP_MODE_MASK, 0);

	if (info->micd_clamp) {
		jack_irq_rise = ARIZONA_IRQ_MICD_CLAMP_RISE;
		jack_irq_fall = ARIZONA_IRQ_MICD_CLAMP_FALL;
	} else {
		jack_irq_rise = ARIZONA_IRQ_JD_RISE;
		jack_irq_fall = ARIZONA_IRQ_JD_FALL;
	}

	FUNC2(arizona, jack_irq_rise, 0);
	FUNC2(arizona, jack_irq_fall, 0);
	FUNC1(arizona, ARIZONA_IRQ_HPDET, info);
	FUNC1(arizona, ARIZONA_IRQ_MICDET, info);
	FUNC1(arizona, jack_irq_rise, info);
	FUNC1(arizona, jack_irq_fall, info);
	FUNC3(&info->hpdet_work);
	FUNC9(arizona->regmap, ARIZONA_JACK_DETECT_ANALOGUE,
			   ARIZONA_JD1_ENA, 0);
	FUNC0(arizona);

	return 0;
}