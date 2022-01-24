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
struct meson_drm {int /*<<< orphan*/  canvas_id_vd1_2; scalar_t__ canvas; int /*<<< orphan*/  canvas_id_vd1_1; int /*<<< orphan*/  canvas_id_vd1_0; int /*<<< orphan*/  canvas_id_osd1; struct drm_device* drm; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct meson_drm* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct meson_drm *priv = FUNC0(dev);
	struct drm_device *drm = priv->drm;

	if (priv->canvas) {
		FUNC6(priv->canvas, priv->canvas_id_osd1);
		FUNC6(priv->canvas, priv->canvas_id_vd1_0);
		FUNC6(priv->canvas, priv->canvas_id_vd1_1);
		FUNC6(priv->canvas, priv->canvas_id_vd1_2);
	}

	FUNC2(drm);
	FUNC3(drm);
	FUNC4(drm);
	FUNC5(drm);
	FUNC1(drm);

}