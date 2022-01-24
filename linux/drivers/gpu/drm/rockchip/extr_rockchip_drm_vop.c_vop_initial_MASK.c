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
typedef  int /*<<< orphan*/  u32 ;
struct vop_win_data {int dummy; } ;
struct vop_win {struct vop_win_data* data; } ;
struct vop {int len; int is_enabled; int /*<<< orphan*/  dev; struct reset_control* dclk; struct reset_control* hclk; struct reset_control* aclk; struct reset_control* dclk_rst; struct vop_win* win; TYPE_1__* data; scalar_t__ regs; int /*<<< orphan*/ * regsbak; } ;
struct reset_control {int dummy; } ;
struct TYPE_2__ {int win_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  INTR_MASK ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vop*,struct vop_win_data const*,int,int) ; 
 int /*<<< orphan*/  clear ; 
 int /*<<< orphan*/  FUNC6 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct reset_control*) ; 
 int FUNC8 (struct reset_control*) ; 
 int FUNC9 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC10 (struct reset_control*) ; 
 int /*<<< orphan*/  common ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dsp_blank ; 
 int /*<<< orphan*/  enable ; 
 int gate ; 
 int /*<<< orphan*/  global_regdone_en ; 
 int /*<<< orphan*/  misc ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC17 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct vop*) ; 
 int /*<<< orphan*/  FUNC20 (struct vop*,struct vop_win*) ; 

__attribute__((used)) static int FUNC21(struct vop *vop)
{
	struct reset_control *ahb_rst;
	int i, ret;

	vop->hclk = FUNC11(vop->dev, "hclk_vop");
	if (FUNC1(vop->hclk)) {
		FUNC0(vop->dev, "failed to get hclk source\n");
		return FUNC2(vop->hclk);
	}
	vop->aclk = FUNC11(vop->dev, "aclk_vop");
	if (FUNC1(vop->aclk)) {
		FUNC0(vop->dev, "failed to get aclk source\n");
		return FUNC2(vop->aclk);
	}
	vop->dclk = FUNC11(vop->dev, "dclk_vop");
	if (FUNC1(vop->dclk)) {
		FUNC0(vop->dev, "failed to get dclk source\n");
		return FUNC2(vop->dclk);
	}

	ret = FUNC13(vop->dev);
	if (ret < 0) {
		FUNC0(vop->dev, "failed to get pm runtime: %d\n", ret);
		return ret;
	}

	ret = FUNC8(vop->dclk);
	if (ret < 0) {
		FUNC0(vop->dev, "failed to prepare dclk\n");
		goto err_put_pm_runtime;
	}

	/* Enable both the hclk and aclk to setup the vop */
	ret = FUNC9(vop->hclk);
	if (ret < 0) {
		FUNC0(vop->dev, "failed to prepare/enable hclk\n");
		goto err_unprepare_dclk;
	}

	ret = FUNC9(vop->aclk);
	if (ret < 0) {
		FUNC0(vop->dev, "failed to prepare/enable aclk\n");
		goto err_disable_hclk;
	}

	/*
	 * do hclk_reset, reset all vop registers.
	 */
	ahb_rst = FUNC12(vop->dev, "ahb");
	if (FUNC1(ahb_rst)) {
		FUNC0(vop->dev, "failed to get ahb reset\n");
		ret = FUNC2(ahb_rst);
		goto err_disable_aclk;
	}
	FUNC16(ahb_rst);
	FUNC18(10, 20);
	FUNC17(ahb_rst);

	FUNC3(vop, clear, INTR_MASK, 1);
	FUNC3(vop, enable, INTR_MASK, 0);

	for (i = 0; i < vop->len; i += sizeof(u32))
		vop->regsbak[i / 4] = FUNC15(vop->regs + i);

	FUNC4(vop, misc, global_regdone_en, 1);
	FUNC4(vop, common, dsp_blank, 0);

	for (i = 0; i < vop->data->win_size; i++) {
		struct vop_win *vop_win = &vop->win[i];
		const struct vop_win_data *win = vop_win->data;
		int channel = i * 2 + 1;

		FUNC5(vop, win, channel, (channel + 1) << 4 | channel);
		FUNC20(vop, vop_win);
		FUNC5(vop, win, gate, 1);
	}

	FUNC19(vop);

	/*
	 * do dclk_reset, let all config take affect.
	 */
	vop->dclk_rst = FUNC12(vop->dev, "dclk");
	if (FUNC1(vop->dclk_rst)) {
		FUNC0(vop->dev, "failed to get dclk reset\n");
		ret = FUNC2(vop->dclk_rst);
		goto err_disable_aclk;
	}
	FUNC16(vop->dclk_rst);
	FUNC18(10, 20);
	FUNC17(vop->dclk_rst);

	FUNC6(vop->hclk);
	FUNC6(vop->aclk);

	vop->is_enabled = false;

	FUNC14(vop->dev);

	return 0;

err_disable_aclk:
	FUNC7(vop->aclk);
err_disable_hclk:
	FUNC7(vop->hclk);
err_unprepare_dclk:
	FUNC10(vop->dclk);
err_put_pm_runtime:
	FUNC14(vop->dev);
	return ret;
}