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
struct msm_mdss {int dummy; } ;
struct dss_module_power {int /*<<< orphan*/  num_clk; int /*<<< orphan*/  clk_config; } ;
struct dpu_mdss {struct dss_module_power mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_mdss*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dpu_mdss* FUNC3 (struct msm_mdss*) ; 

__attribute__((used)) static int FUNC4(struct msm_mdss *mdss)
{
	struct dpu_mdss *dpu_mdss = FUNC3(mdss);
	struct dss_module_power *mp = &dpu_mdss->mp;
	int ret;

	FUNC1(mdss);

	ret = FUNC2(mp->clk_config, mp->num_clk, true);
	if (ret)
		FUNC0("clock enable failed, ret:%d\n", ret);

	return ret;
}