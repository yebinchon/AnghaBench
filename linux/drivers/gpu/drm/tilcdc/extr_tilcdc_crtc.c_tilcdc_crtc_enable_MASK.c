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
struct tilcdc_crtc {int enabled; int /*<<< orphan*/  enable_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  last_vblank; scalar_t__ shutdown; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_ONLY ; 
 int /*<<< orphan*/  LCDC_DMA_CTRL_REG ; 
 int /*<<< orphan*/  LCDC_DUAL_FRAME_BUFFER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCDC_PALETTE_LOAD_MODE_MASK ; 
 int /*<<< orphan*/  LCDC_RASTER_CTRL_REG ; 
 int /*<<< orphan*/  LCDC_RASTER_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tilcdc_crtc* FUNC14 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC15(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct tilcdc_crtc *tilcdc_crtc = FUNC14(crtc);
	unsigned long flags;

	FUNC3(&tilcdc_crtc->enable_lock);
	if (tilcdc_crtc->enabled || tilcdc_crtc->shutdown) {
		FUNC4(&tilcdc_crtc->enable_lock);
		return;
	}

	FUNC5(dev->dev);

	FUNC6(crtc);

	FUNC11(crtc);

	FUNC10(dev);

	FUNC9(dev, LCDC_DMA_CTRL_REG, LCDC_DUAL_FRAME_BUFFER_ENABLE);
	FUNC13(dev, LCDC_RASTER_CTRL_REG,
			  FUNC0(DATA_ONLY),
			  LCDC_PALETTE_LOAD_MODE_MASK);

	/* There is no real chance for a race here as the time stamp
	 * is taken before the raster DMA is started. The spin-lock is
	 * taken to have a memory barrier after taking the time-stamp
	 * and to avoid a context switch between taking the stamp and
	 * enabling the raster.
	 */
	FUNC7(&tilcdc_crtc->irq_lock, flags);
	tilcdc_crtc->last_vblank = FUNC2();
	FUNC12(dev, LCDC_RASTER_CTRL_REG, LCDC_RASTER_ENABLE);
	FUNC8(&tilcdc_crtc->irq_lock, flags);

	FUNC1(crtc);

	tilcdc_crtc->enabled = true;
	FUNC4(&tilcdc_crtc->enable_lock);
}