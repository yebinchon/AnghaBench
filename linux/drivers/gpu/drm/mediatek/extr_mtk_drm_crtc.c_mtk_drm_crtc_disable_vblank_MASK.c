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
struct mtk_drm_crtc {struct mtk_ddp_comp** ddp_comp; } ;
struct mtk_ddp_comp {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_ddp_comp*) ; 
 struct mtk_drm_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC2(struct drm_crtc *crtc)
{
	struct mtk_drm_crtc *mtk_crtc = FUNC1(crtc);
	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];

	FUNC0(comp);
}