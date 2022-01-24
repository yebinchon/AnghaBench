#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtk_drm_private {TYPE_2__* data; } ;
struct mtk_drm_crtc {int dummy; } ;
struct mtk_ddp_comp {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  shadow_register; } ;
struct TYPE_3__ {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_drm_crtc*) ; 
 struct mtk_drm_crtc* FUNC2 (struct drm_crtc*) ; 

void FUNC3(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
{
	struct mtk_drm_crtc *mtk_crtc = FUNC2(crtc);
	struct mtk_drm_private *priv = crtc->dev->dev_private;

	if (!priv->data->shadow_register)
		FUNC0(crtc);

	FUNC1(mtk_crtc);
}