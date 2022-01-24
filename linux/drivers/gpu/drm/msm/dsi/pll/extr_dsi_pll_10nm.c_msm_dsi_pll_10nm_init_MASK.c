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
struct msm_dsi_pll {unsigned long min_rate; unsigned long max_rate; int /*<<< orphan*/  set_usecase; int /*<<< orphan*/  restore_state; int /*<<< orphan*/  save_state; int /*<<< orphan*/  destroy; int /*<<< orphan*/  get_provider; } ;
struct dsi_pll_10nm {int id; int vco_delay; struct msm_dsi_pll base; int /*<<< orphan*/  postdiv_lock; void* mmio; void* phy_cmn_mmio; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int ENOMEM ; 
 struct msm_dsi_pll* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (void*) ; 
 struct dsi_pll_10nm* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_pll_10nm_destroy ; 
 int /*<<< orphan*/  dsi_pll_10nm_get_provider ; 
 int /*<<< orphan*/  dsi_pll_10nm_restore_state ; 
 int /*<<< orphan*/  dsi_pll_10nm_save_state ; 
 int /*<<< orphan*/  dsi_pll_10nm_set_usecase ; 
 int /*<<< orphan*/  FUNC5 (struct msm_dsi_pll*) ; 
 void* FUNC6 (struct platform_device*,char*,char*) ; 
 struct dsi_pll_10nm** pll_10nm_list ; 
 int FUNC7 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct msm_dsi_pll *FUNC9(struct platform_device *pdev, int id)
{
	struct dsi_pll_10nm *pll_10nm;
	struct msm_dsi_pll *pll;
	int ret;

	pll_10nm = FUNC4(&pdev->dev, sizeof(*pll_10nm), GFP_KERNEL);
	if (!pll_10nm)
		return FUNC2(-ENOMEM);

	FUNC0("DSI PLL%d", id);

	pll_10nm->pdev = pdev;
	pll_10nm->id = id;
	pll_10nm_list[id] = pll_10nm;

	pll_10nm->phy_cmn_mmio = FUNC6(pdev, "dsi_phy", "DSI_PHY");
	if (FUNC3(pll_10nm->phy_cmn_mmio)) {
		FUNC1(&pdev->dev, "failed to map CMN PHY base\n");
		return FUNC2(-ENOMEM);
	}

	pll_10nm->mmio = FUNC6(pdev, "dsi_pll", "DSI_PLL");
	if (FUNC3(pll_10nm->mmio)) {
		FUNC1(&pdev->dev, "failed to map PLL base\n");
		return FUNC2(-ENOMEM);
	}

	FUNC8(&pll_10nm->postdiv_lock);

	pll = &pll_10nm->base;
	pll->min_rate = 1000000000UL;
	pll->max_rate = 3500000000UL;
	pll->get_provider = dsi_pll_10nm_get_provider;
	pll->destroy = dsi_pll_10nm_destroy;
	pll->save_state = dsi_pll_10nm_save_state;
	pll->restore_state = dsi_pll_10nm_restore_state;
	pll->set_usecase = dsi_pll_10nm_set_usecase;

	pll_10nm->vco_delay = 1;

	ret = FUNC7(pll_10nm);
	if (ret) {
		FUNC1(&pdev->dev, "failed to register PLL: %d\n", ret);
		return FUNC2(ret);
	}

	/* TODO: Remove this when we have proper display handover support */
	FUNC5(pll);

	return pll;
}