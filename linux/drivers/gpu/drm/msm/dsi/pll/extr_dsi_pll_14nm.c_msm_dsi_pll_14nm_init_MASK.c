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
struct msm_dsi_pll {int en_seq_cnt; int /*<<< orphan*/ * enable_seqs; int /*<<< orphan*/  set_usecase; int /*<<< orphan*/  restore_state; int /*<<< orphan*/  save_state; int /*<<< orphan*/  disable_seq; int /*<<< orphan*/  destroy; int /*<<< orphan*/  get_provider; int /*<<< orphan*/  max_rate; int /*<<< orphan*/  min_rate; } ;
struct dsi_pll_14nm {int id; int vco_delay; struct msm_dsi_pll base; int /*<<< orphan*/  postdiv_lock; void* mmio; void* phy_cmn_mmio; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct msm_dsi_pll* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  VCO_MAX_RATE ; 
 int /*<<< orphan*/  VCO_MIN_RATE ; 
 struct dsi_pll_14nm* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_pll_14nm_destroy ; 
 int /*<<< orphan*/  dsi_pll_14nm_disable_seq ; 
 int /*<<< orphan*/  dsi_pll_14nm_enable_seq ; 
 int /*<<< orphan*/  dsi_pll_14nm_get_provider ; 
 int /*<<< orphan*/  dsi_pll_14nm_restore_state ; 
 int /*<<< orphan*/  dsi_pll_14nm_save_state ; 
 int /*<<< orphan*/  dsi_pll_14nm_set_usecase ; 
 void* FUNC5 (struct platform_device*,char*,char*) ; 
 struct dsi_pll_14nm** pll_14nm_list ; 
 int FUNC6 (struct dsi_pll_14nm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct msm_dsi_pll *FUNC8(struct platform_device *pdev, int id)
{
	struct dsi_pll_14nm *pll_14nm;
	struct msm_dsi_pll *pll;
	int ret;

	if (!pdev)
		return FUNC2(-ENODEV);

	pll_14nm = FUNC4(&pdev->dev, sizeof(*pll_14nm), GFP_KERNEL);
	if (!pll_14nm)
		return FUNC2(-ENOMEM);

	FUNC0("PLL%d", id);

	pll_14nm->pdev = pdev;
	pll_14nm->id = id;
	pll_14nm_list[id] = pll_14nm;

	pll_14nm->phy_cmn_mmio = FUNC5(pdev, "dsi_phy", "DSI_PHY");
	if (FUNC3(pll_14nm->phy_cmn_mmio)) {
		FUNC1(&pdev->dev, "failed to map CMN PHY base\n");
		return FUNC2(-ENOMEM);
	}

	pll_14nm->mmio = FUNC5(pdev, "dsi_pll", "DSI_PLL");
	if (FUNC3(pll_14nm->mmio)) {
		FUNC1(&pdev->dev, "failed to map PLL base\n");
		return FUNC2(-ENOMEM);
	}

	FUNC7(&pll_14nm->postdiv_lock);

	pll = &pll_14nm->base;
	pll->min_rate = VCO_MIN_RATE;
	pll->max_rate = VCO_MAX_RATE;
	pll->get_provider = dsi_pll_14nm_get_provider;
	pll->destroy = dsi_pll_14nm_destroy;
	pll->disable_seq = dsi_pll_14nm_disable_seq;
	pll->save_state = dsi_pll_14nm_save_state;
	pll->restore_state = dsi_pll_14nm_restore_state;
	pll->set_usecase = dsi_pll_14nm_set_usecase;

	pll_14nm->vco_delay = 1;

	pll->en_seq_cnt = 1;
	pll->enable_seqs[0] = dsi_pll_14nm_enable_seq;

	ret = FUNC6(pll_14nm);
	if (ret) {
		FUNC1(&pdev->dev, "failed to register PLL: %d\n", ret);
		return FUNC2(ret);
	}

	return pll;
}