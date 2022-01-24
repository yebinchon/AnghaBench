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
struct exynos_ppmu {int /*<<< orphan*/  regmap; } ;
struct devfreq_event_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int event_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PPMU_CCNT_MASK ; 
 int /*<<< orphan*/  PPMU_CNTENS ; 
 int PPMU_ENABLE ; 
 int /*<<< orphan*/  PPMU_PMNC ; 
 int PPMU_PMNC_CC_RESET_MASK ; 
 int PPMU_PMNC_CC_RESET_SHIFT ; 
 int PPMU_PMNC_COUNTER_RESET_MASK ; 
 int PPMU_PMNC_COUNTER_RESET_SHIFT ; 
 int PPMU_PMNC_ENABLE_MASK ; 
 int PPMU_PMNC_ENABLE_SHIFT ; 
 struct exynos_ppmu* FUNC1 (struct devfreq_event_dev*) ; 
 int FUNC2 (struct devfreq_event_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct devfreq_event_dev *edev)
{
	struct exynos_ppmu *info = FUNC1(edev);
	int id = FUNC2(edev);
	int ret;
	u32 pmnc, cntens;

	if (id < 0)
		return id;

	/* Enable specific counter */
	ret = FUNC3(info->regmap, PPMU_CNTENS, &cntens);
	if (ret < 0)
		return ret;

	cntens |= (PPMU_CCNT_MASK | (PPMU_ENABLE << id));
	ret = FUNC4(info->regmap, PPMU_CNTENS, cntens);
	if (ret < 0)
		return ret;

	/* Set the event of proper data type monitoring */
	ret = FUNC4(info->regmap, FUNC0(id),
			   edev->desc->event_type);
	if (ret < 0)
		return ret;

	/* Reset cycle counter/performance counter and enable PPMU */
	ret = FUNC3(info->regmap, PPMU_PMNC, &pmnc);
	if (ret < 0)
		return ret;

	pmnc &= ~(PPMU_PMNC_ENABLE_MASK
			| PPMU_PMNC_COUNTER_RESET_MASK
			| PPMU_PMNC_CC_RESET_MASK);
	pmnc |= (PPMU_ENABLE << PPMU_PMNC_ENABLE_SHIFT);
	pmnc |= (PPMU_ENABLE << PPMU_PMNC_COUNTER_RESET_SHIFT);
	pmnc |= (PPMU_ENABLE << PPMU_PMNC_CC_RESET_SHIFT);
	ret = FUNC4(info->regmap, PPMU_PMNC, pmnc);
	if (ret < 0)
		return ret;

	return 0;
}