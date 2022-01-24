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
typedef  int u64 ;
struct exynos_ppmu {int /*<<< orphan*/  regmap; } ;
struct devfreq_event_dev {TYPE_1__* desc; int /*<<< orphan*/  dev; } ;
struct devfreq_event_data {unsigned int total_count; unsigned long load_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int PPMU_CCNT_MASK ; 
 int PPMU_ENABLE ; 
#define  PPMU_PMNCNT0 131 
#define  PPMU_PMNCNT1 130 
#define  PPMU_PMNCNT2 129 
#define  PPMU_PMNCNT3 128 
 unsigned int PPMU_PMNC_ENABLE_MASK ; 
 int /*<<< orphan*/  PPMU_V2_CCNT ; 
 int /*<<< orphan*/  PPMU_V2_CNTENC ; 
 int /*<<< orphan*/  PPMU_V2_PMCNT3_HIGH ; 
 int /*<<< orphan*/  PPMU_V2_PMCNT3_LOW ; 
 int /*<<< orphan*/  PPMU_V2_PMNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 struct exynos_ppmu* FUNC2 (struct devfreq_event_dev*) ; 
 int FUNC3 (struct devfreq_event_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct devfreq_event_dev *edev,
				    struct devfreq_event_data *edata)
{
	struct exynos_ppmu *info = FUNC2(edev);
	int id = FUNC3(edev);
	int ret;
	unsigned int pmnc, cntenc;
	unsigned int pmcnt_high, pmcnt_low;
	unsigned int total_count, count;
	unsigned long load_count = 0;

	/* Disable PPMU */
	ret = FUNC4(info->regmap, PPMU_V2_PMNC, &pmnc);
	if (ret < 0)
		return ret;

	pmnc &= ~PPMU_PMNC_ENABLE_MASK;
	ret = FUNC5(info->regmap, PPMU_V2_PMNC, pmnc);
	if (ret < 0)
		return ret;

	/* Read cycle count and performance count */
	ret = FUNC4(info->regmap, PPMU_V2_CCNT, &total_count);
	if (ret < 0)
		return ret;
	edata->total_count = total_count;

	switch (id) {
	case PPMU_PMNCNT0:
	case PPMU_PMNCNT1:
	case PPMU_PMNCNT2:
		ret = FUNC4(info->regmap, FUNC0(id), &count);
		if (ret < 0)
			return ret;
		load_count = count;
		break;
	case PPMU_PMNCNT3:
		ret = FUNC4(info->regmap, PPMU_V2_PMCNT3_HIGH,
						&pmcnt_high);
		if (ret < 0)
			return ret;

		ret = FUNC4(info->regmap, PPMU_V2_PMCNT3_LOW, &pmcnt_low);
		if (ret < 0)
			return ret;

		load_count = ((u64)((pmcnt_high & 0xff)) << 32)+ (u64)pmcnt_low;
		break;
	}
	edata->load_count = load_count;

	/* Disable all counters */
	ret = FUNC4(info->regmap, PPMU_V2_CNTENC, &cntenc);
	if (ret < 0)
		return 0;

	cntenc |= (PPMU_CCNT_MASK | (PPMU_ENABLE << id));
	ret = FUNC5(info->regmap, PPMU_V2_CNTENC, cntenc);
	if (ret < 0)
		return ret;

	FUNC1(&edev->dev, "%25s (load: %ld / %ld)\n", edev->desc->name,
					edata->load_count, edata->total_count);
	return 0;
}