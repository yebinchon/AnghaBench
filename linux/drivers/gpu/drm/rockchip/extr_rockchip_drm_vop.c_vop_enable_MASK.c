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
struct vop_win {int dummy; } ;
struct vop {int len; int is_enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  dclk; int /*<<< orphan*/  reg_lock; struct vop_win* win; TYPE_1__* data; scalar_t__ regs; int /*<<< orphan*/ * regsbak; int /*<<< orphan*/  drm_dev; } ;
struct drm_crtc_state {int /*<<< orphan*/  self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int win_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  common ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  standby ; 
 struct vop* FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct vop*) ; 
 int /*<<< orphan*/  FUNC13 (struct vop*) ; 
 int FUNC14 (struct vop*) ; 
 int /*<<< orphan*/  FUNC15 (struct vop*,struct vop_win*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
{
	struct vop *vop = FUNC11(crtc);
	int ret, i;

	ret = FUNC6(vop->dev);
	if (ret < 0) {
		FUNC0(vop->dev, "failed to get pm runtime: %d\n", ret);
		return ret;
	}

	ret = FUNC14(vop);
	if (FUNC2(ret < 0))
		goto err_put_pm_runtime;

	ret = FUNC4(vop->dclk);
	if (FUNC2(ret < 0))
		goto err_disable_core;

	/*
	 * Slave iommu shares power, irq and clock with vop.  It was associated
	 * automatically with this master device via common driver code.
	 * Now that we have enabled the clock we attach it to the shared drm
	 * mapping.
	 */
	ret = FUNC8(vop->drm_dev, vop->dev);
	if (ret) {
		FUNC0(vop->dev,
			      "failed to attach dma mapping, %d\n", ret);
		goto err_disable_dclk;
	}

	FUNC9(&vop->reg_lock);
	for (i = 0; i < vop->len; i += 4)
		FUNC16(vop->regsbak[i / 4], vop->regs + i);

	/*
	 * We need to make sure that all windows are disabled before we
	 * enable the crtc. Otherwise we might try to scan from a destroyed
	 * buffer later.
	 *
	 * In the case of enable-after-PSR, we don't need to worry about this
	 * case since the buffer is guaranteed to be valid and disabling the
	 * window will result in screen glitches on PSR exit.
	 */
	if (!old_state || !old_state->self_refresh_active) {
		for (i = 0; i < vop->data->win_size; i++) {
			struct vop_win *vop_win = &vop->win[i];

			FUNC15(vop, vop_win);
		}
	}
	FUNC10(&vop->reg_lock);

	FUNC12(vop);

	/*
	 * At here, vop clock & iommu is enable, R/W vop regs would be safe.
	 */
	vop->is_enabled = true;

	FUNC9(&vop->reg_lock);

	FUNC1(vop, common, standby, 1);

	FUNC10(&vop->reg_lock);

	FUNC5(crtc);

	return 0;

err_disable_dclk:
	FUNC3(vop->dclk);
err_disable_core:
	FUNC13(vop);
err_put_pm_runtime:
	FUNC7(vop->dev);
	return ret;
}