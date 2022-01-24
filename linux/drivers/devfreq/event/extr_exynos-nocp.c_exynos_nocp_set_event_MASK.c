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
struct exynos_nocp {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct devfreq_event_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOCP_CFG_CTL ; 
 int NOCP_CFG_CTL_GLOBALEN_MASK ; 
 int NOCP_CNT_ALARM_MODE_MASK ; 
 int NOCP_CNT_ALARM_MODE_MIN_MAX_MASK ; 
 int NOCP_CNT_SRC_INTEVENT_BYTE_MASK ; 
 int NOCP_CNT_SRC_INTEVENT_CHAIN_MASK ; 
 int NOCP_CNT_SRC_INTEVENT_CYCLE_MASK ; 
 int NOCP_CNT_SRC_INTEVENT_MASK ; 
 int /*<<< orphan*/  NOCP_COUNTERS_0_ALARM_MODE ; 
 int /*<<< orphan*/  NOCP_COUNTERS_0_SRC ; 
 int /*<<< orphan*/  NOCP_COUNTERS_1_ALARM_MODE ; 
 int /*<<< orphan*/  NOCP_COUNTERS_1_SRC ; 
 int /*<<< orphan*/  NOCP_COUNTERS_2_ALARM_MODE ; 
 int /*<<< orphan*/  NOCP_COUNTERS_2_SRC ; 
 int /*<<< orphan*/  NOCP_COUNTERS_3_ALARM_MODE ; 
 int /*<<< orphan*/  NOCP_COUNTERS_3_SRC ; 
 int /*<<< orphan*/  NOCP_MAIN_CTL ; 
 int NOCP_MAIN_CTL_ALARMEN_MASK ; 
 int NOCP_MAIN_CTL_STATEN_MASK ; 
 int /*<<< orphan*/  NOCP_STAT_ALARM_MAX ; 
 int /*<<< orphan*/  NOCP_STAT_ALARM_MIN ; 
 int /*<<< orphan*/  NOCP_STAT_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct exynos_nocp* FUNC1 (struct devfreq_event_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct devfreq_event_dev *edev)
{
	struct exynos_nocp *nocp = FUNC1(edev);
	int ret;

	/* Disable NoC probe */
	ret = FUNC2(nocp->regmap, NOCP_MAIN_CTL,
				NOCP_MAIN_CTL_STATEN_MASK, 0);
	if (ret < 0) {
		FUNC0(nocp->dev, "failed to disable the NoC probe device\n");
		return ret;
	}

	/* Set a statistics dump period to 0 */
	ret = FUNC3(nocp->regmap, NOCP_STAT_PERIOD, 0x0);
	if (ret < 0)
		goto out;

	/* Set the IntEvent fields of *_SRC */
	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_0_SRC,
				NOCP_CNT_SRC_INTEVENT_MASK,
				NOCP_CNT_SRC_INTEVENT_BYTE_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_1_SRC,
				NOCP_CNT_SRC_INTEVENT_MASK,
				NOCP_CNT_SRC_INTEVENT_CHAIN_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_2_SRC,
				NOCP_CNT_SRC_INTEVENT_MASK,
				NOCP_CNT_SRC_INTEVENT_CYCLE_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_3_SRC,
				NOCP_CNT_SRC_INTEVENT_MASK,
				NOCP_CNT_SRC_INTEVENT_CHAIN_MASK);
	if (ret < 0)
		goto out;


	/* Set an alarm with a max/min value of 0 to generate StatALARM */
	ret = FUNC3(nocp->regmap, NOCP_STAT_ALARM_MIN, 0x0);
	if (ret < 0)
		goto out;

	ret = FUNC3(nocp->regmap, NOCP_STAT_ALARM_MAX, 0x0);
	if (ret < 0)
		goto out;

	/* Set AlarmMode */
	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_0_ALARM_MODE,
				NOCP_CNT_ALARM_MODE_MASK,
				NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_1_ALARM_MODE,
				NOCP_CNT_ALARM_MODE_MASK,
				NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_2_ALARM_MODE,
				NOCP_CNT_ALARM_MODE_MASK,
				NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
	if (ret < 0)
		goto out;

	ret = FUNC2(nocp->regmap, NOCP_COUNTERS_3_ALARM_MODE,
				NOCP_CNT_ALARM_MODE_MASK,
				NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
	if (ret < 0)
		goto out;

	/* Enable the measurements by setting AlarmEn and StatEn */
	ret = FUNC2(nocp->regmap, NOCP_MAIN_CTL,
			NOCP_MAIN_CTL_STATEN_MASK | NOCP_MAIN_CTL_ALARMEN_MASK,
			NOCP_MAIN_CTL_STATEN_MASK | NOCP_MAIN_CTL_ALARMEN_MASK);
	if (ret < 0)
		goto out;

	/* Set GlobalEN */
	ret = FUNC2(nocp->regmap, NOCP_CFG_CTL,
				NOCP_CFG_CTL_GLOBALEN_MASK,
				NOCP_CFG_CTL_GLOBALEN_MASK);
	if (ret < 0)
		goto out;

	/* Enable NoC probe */
	ret = FUNC2(nocp->regmap, NOCP_MAIN_CTL,
				NOCP_MAIN_CTL_STATEN_MASK,
				NOCP_MAIN_CTL_STATEN_MASK);
	if (ret < 0)
		goto out;

	return 0;

out:
	/* Reset NoC probe */
	if (FUNC2(nocp->regmap, NOCP_MAIN_CTL,
				NOCP_MAIN_CTL_STATEN_MASK, 0)) {
		FUNC0(nocp->dev, "Failed to reset NoC probe device\n");
	}

	return ret;
}