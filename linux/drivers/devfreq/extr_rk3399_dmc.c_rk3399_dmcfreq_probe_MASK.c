#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  downdifferential; int /*<<< orphan*/  upthreshold; } ;
struct TYPE_6__ {int sr_idle; int sr_mc_gate_idle; int standby_idle; int pd_idle; int srpd_lite_idle; int /*<<< orphan*/  lpddr4_odt_dis_freq; int /*<<< orphan*/  lpddr3_odt_dis_freq; int /*<<< orphan*/  ddr3_odt_dis_freq; int /*<<< orphan*/  ddr3_speed_bin; } ;
struct rk3399_dmcfreq {int odt_pd_arg0; int odt_pd_arg1; struct device* dev; struct dev_pm_opp* devfreq; TYPE_4__ ondemand_data; int /*<<< orphan*/  rate; int /*<<< orphan*/  volt; struct dev_pm_opp* dmc_clk; TYPE_2__ timing; int /*<<< orphan*/  odt_dis_freq; struct dev_pm_opp* regmap_pmu; struct dev_pm_opp* edev; struct dev_pm_opp* vdd_center; int /*<<< orphan*/  lock; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dram_timing {int dummy; } ;
struct device_node {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct arm_smccc_res {scalar_t__ a0; } ;
struct TYPE_5__ {int /*<<< orphan*/  initial_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_GOV_SIMPLE_ONDEMAND ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
#define  RK3399_PMUGRF_DDRTYPE_DDR3 130 
#define  RK3399_PMUGRF_DDRTYPE_LPDDR3 129 
#define  RK3399_PMUGRF_DDRTYPE_LPDDR4 128 
 int RK3399_PMUGRF_DDRTYPE_MASK ; 
 int RK3399_PMUGRF_DDRTYPE_SHIFT ; 
 int /*<<< orphan*/  RK3399_PMUGRF_OS_REG2 ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_CONFIG_DRAM_INIT ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_DRAM_FREQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dev_pm_opp*) ; 
 int FUNC10 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC12 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC13 (struct device*,char*) ; 
 struct dev_pm_opp* FUNC14 (struct device*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct dev_pm_opp*) ; 
 struct rk3399_dmcfreq* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC17 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,struct device_node*) ; 
 struct device_node* FUNC20 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct rk3399_dmcfreq*) ; 
 int /*<<< orphan*/  FUNC23 (struct dev_pm_opp*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__ rk3399_devfreq_dmc_profile ; 
 struct dev_pm_opp* FUNC24 (struct device_node*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct arm_smccc_res res;
	struct device *dev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node, *node;
	struct rk3399_dmcfreq *data;
	int ret, index, size;
	uint32_t *timing;
	struct dev_pm_opp *opp;
	u32 ddr_type;
	u32 val;

	data = FUNC16(dev, sizeof(struct rk3399_dmcfreq), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC18(&data->lock);

	data->vdd_center = FUNC17(dev, "center");
	if (FUNC0(data->vdd_center)) {
		if (FUNC1(data->vdd_center) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC4(dev, "Cannot get the regulator \"center\"\n");
		return FUNC1(data->vdd_center);
	}

	data->dmc_clk = FUNC13(dev, "dmc_clk");
	if (FUNC0(data->dmc_clk)) {
		if (FUNC1(data->dmc_clk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC4(dev, "Cannot get the clk dmc_clk\n");
		return FUNC1(data->dmc_clk);
	}

	data->edev = FUNC11(dev, 0);
	if (FUNC0(data->edev))
		return -EPROBE_DEFER;

	ret = FUNC10(data->edev);
	if (ret < 0) {
		FUNC4(dev, "failed to enable devfreq-event devices\n");
		return ret;
	}

	/*
	 * Get dram timing and pass it to arm trust firmware,
	 * the dram driver in arm trust firmware will get these
	 * timing and to do dram initial.
	 */
	if (!FUNC19(&data->timing, np)) {
		timing = &data->timing.ddr3_speed_bin;
		size = sizeof(struct dram_timing) / 4;
		for (index = 0; index < size; index++) {
			FUNC2(ROCKCHIP_SIP_DRAM_FREQ, *timing++, index,
				      ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM,
				      0, 0, 0, 0, &res);
			if (res.a0) {
				FUNC4(dev, "Failed to set dram param: %ld\n",
					res.a0);
				return -EINVAL;
			}
		}
	}

	node = FUNC20(np, "rockchip,pmu", 0);
	if (node) {
		data->regmap_pmu = FUNC24(node);
		if (FUNC0(data->regmap_pmu))
			return FUNC1(data->regmap_pmu);
	}

	FUNC23(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
		    RK3399_PMUGRF_DDRTYPE_MASK;

	switch (ddr_type) {
	case RK3399_PMUGRF_DDRTYPE_DDR3:
		data->odt_dis_freq = data->timing.ddr3_odt_dis_freq;
		break;
	case RK3399_PMUGRF_DDRTYPE_LPDDR3:
		data->odt_dis_freq = data->timing.lpddr3_odt_dis_freq;
		break;
	case RK3399_PMUGRF_DDRTYPE_LPDDR4:
		data->odt_dis_freq = data->timing.lpddr4_odt_dis_freq;
		break;
	default:
		return -EINVAL;
	};

	FUNC2(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
		      ROCKCHIP_SIP_CONFIG_DRAM_INIT,
		      0, 0, 0, 0, &res);

	/*
	 * In TF-A there is a platform SIP call to set the PD (power-down)
	 * timings and to enable or disable the ODT (on-die termination).
	 * This call needs three arguments as follows:
	 *
	 * arg0:
	 *     bit[0-7]   : sr_idle
	 *     bit[8-15]  : sr_mc_gate_idle
	 *     bit[16-31] : standby idle
	 * arg1:
	 *     bit[0-11]  : pd_idle
	 *     bit[16-27] : srpd_lite_idle
	 * arg2:
	 *     bit[0]     : odt enable
	 */
	data->odt_pd_arg0 = (data->timing.sr_idle & 0xff) |
			    ((data->timing.sr_mc_gate_idle & 0xff) << 8) |
			    ((data->timing.standby_idle & 0xffff) << 16);
	data->odt_pd_arg1 = (data->timing.pd_idle & 0xfff) |
			    ((data->timing.srpd_lite_idle & 0xfff) << 16);

	/*
	 * We add a devfreq driver to our parent since it has a device tree node
	 * with operating points.
	 */
	if (FUNC7(dev)) {
		FUNC4(dev, "Invalid operating-points in device tree.\n");
		return -EINVAL;
	}

	FUNC21(np, "upthreshold",
			     &data->ondemand_data.upthreshold);
	FUNC21(np, "downdifferential",
			     &data->ondemand_data.downdifferential);

	data->rate = FUNC3(data->dmc_clk);

	opp = FUNC12(dev, &data->rate, 0);
	if (FUNC0(opp)) {
		ret = FUNC1(opp);
		goto err_free_opp;
	}

	data->rate = FUNC5(opp);
	data->volt = FUNC6(opp);
	FUNC9(opp);

	rk3399_devfreq_dmc_profile.initial_freq = data->rate;

	data->devfreq = FUNC14(dev,
					   &rk3399_devfreq_dmc_profile,
					   DEVFREQ_GOV_SIMPLE_ONDEMAND,
					   &data->ondemand_data);
	if (FUNC0(data->devfreq)) {
		ret = FUNC1(data->devfreq);
		goto err_free_opp;
	}

	FUNC15(dev, data->devfreq);

	data->dev = dev;
	FUNC22(pdev, data);

	return 0;

err_free_opp:
	FUNC8(&pdev->dev);
	return ret;
}