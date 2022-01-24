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
struct tilcdc_drm_private {int /*<<< orphan*/  clk; } ;
struct tilcdc_crtc {scalar_t__ lcd_fck_rate; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tilcdc_drm_private* dev_private; } ;
struct drm_crtc {int /*<<< orphan*/  mutex; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 scalar_t__ FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*) ; 
 struct tilcdc_crtc* FUNC9 (struct drm_crtc*) ; 

void FUNC10(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct tilcdc_drm_private *priv = dev->dev_private;
	struct tilcdc_crtc *tilcdc_crtc = FUNC9(crtc);

	FUNC1(&crtc->mutex, NULL);
	if (tilcdc_crtc->lcd_fck_rate != FUNC0(priv->clk)) {
		if (FUNC7(crtc)) {
			FUNC3(dev->dev);
			FUNC5(crtc);

			FUNC8(crtc);

			FUNC6(crtc);
			FUNC4(dev->dev);
		}
	}
	FUNC2(&crtc->mutex);
}