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
typedef  int u32 ;
struct rcar_du_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {int index; int vblank_count; int /*<<< orphan*/  vblank_wait; int /*<<< orphan*/  vblank_lock; int /*<<< orphan*/  group; struct drm_crtc crtc; struct rcar_du_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1PR ; 
 int /*<<< orphan*/  DS2PR ; 
 int /*<<< orphan*/  DSSR ; 
 int DSSR_VBK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct rcar_du_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rcar_du_crtc *rcrtc)
{
	struct rcar_du_device *rcdu = rcrtc->dev;
	struct drm_crtc *crtc = &rcrtc->crtc;
	u32 status;

	/* Make sure vblank interrupts are enabled. */
	FUNC1(crtc);

	/*
	 * Disable planes and calculate how many vertical blanking interrupts we
	 * have to wait for. If a vertical blanking interrupt has been triggered
	 * but not processed yet, we don't know whether it occurred before or
	 * after the planes got disabled. We thus have to wait for two vblank
	 * interrupts in that case.
	 */
	FUNC6(&rcrtc->vblank_lock);
	FUNC5(rcrtc->group, rcrtc->index % 2 ? DS2PR : DS1PR, 0);
	status = FUNC4(rcrtc, DSSR);
	rcrtc->vblank_count = status & DSSR_VBK ? 2 : 1;
	FUNC7(&rcrtc->vblank_lock);

	if (!FUNC8(rcrtc->vblank_wait, rcrtc->vblank_count == 0,
				FUNC3(100)))
		FUNC0(rcdu->dev, "vertical blanking timeout\n");

	FUNC2(crtc);
}