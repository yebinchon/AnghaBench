#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct malidp_irq_map {int irq_mask; int err_mask; int vsync_irq; } ;
struct malidp_hw_device {scalar_t__ pm_suspended; struct malidp_hw* hw; } ;
struct TYPE_6__ {int vsync_irq; } ;
struct TYPE_7__ {TYPE_1__ dc_irq_map; scalar_t__ dc_base; struct malidp_irq_map de_irq_map; } ;
struct malidp_hw {TYPE_2__ map; } ;
struct TYPE_8__ {scalar_t__ enabled; } ;
struct malidp_drm {TYPE_3__ crtc; int /*<<< orphan*/  de_errors; int /*<<< orphan*/  config_valid; int /*<<< orphan*/ * event; struct malidp_hw_device* dev; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct malidp_drm* dev_private; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 scalar_t__ IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  MALIDP_CONFIG_VALID_DONE ; 
 int /*<<< orphan*/  MALIDP_DC_BLOCK ; 
 int /*<<< orphan*/  MALIDP_DE_BLOCK ; 
 scalar_t__ MALIDP_REG_MASKIRQ ; 
 scalar_t__ MALIDP_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct malidp_drm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct malidp_hw_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct malidp_hw_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *arg)
{
	struct drm_device *drm = arg;
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev;
	struct malidp_hw *hw;
	const struct malidp_irq_map *de;
	u32 status, mask, dc_status;
	irqreturn_t ret = IRQ_NONE;

	hwdev = malidp->dev;
	hw = hwdev->hw;
	de = &hw->map.de_irq_map;

	/*
	 * if we are suspended it is likely that we were invoked because
	 * we share an interrupt line with some other driver, don't try
	 * to read the hardware registers
	 */
	if (hwdev->pm_suspended)
		return IRQ_NONE;

	/* first handle the config valid IRQ */
	dc_status = FUNC6(hwdev, hw->map.dc_base + MALIDP_REG_STATUS);
	if (dc_status & hw->map.dc_irq_map.vsync_irq) {
		FUNC5(hwdev, MALIDP_DC_BLOCK, dc_status);
		/* do we have a page flip event? */
		if (malidp->event != NULL) {
			FUNC7(&drm->event_lock);
			FUNC2(&malidp->crtc, malidp->event);
			malidp->event = NULL;
			FUNC8(&drm->event_lock);
		}
		FUNC0(&malidp->config_valid, MALIDP_CONFIG_VALID_DONE);
		ret = IRQ_WAKE_THREAD;
	}

	status = FUNC6(hwdev, MALIDP_REG_STATUS);
	if (!(status & de->irq_mask))
		return ret;

	mask = FUNC6(hwdev, MALIDP_REG_MASKIRQ);
	/* keep the status of the enabled interrupts, plus the error bits */
	status &= (mask | de->err_mask);
	if ((status & de->vsync_irq) && malidp->crtc.enabled)
		FUNC1(&malidp->crtc);

#ifdef CONFIG_DEBUG_FS
	if (status & de->err_mask) {
		malidp_error(malidp, &malidp->de_errors, status,
			     drm_crtc_vblank_count(&malidp->crtc));
	}
#endif
	FUNC5(hwdev, MALIDP_DE_BLOCK, status);

	return (ret == IRQ_NONE) ? IRQ_HANDLED : ret;
}