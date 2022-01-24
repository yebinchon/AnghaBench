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
struct mtk_drm_crtc {int pending_needs_vblank; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_drm_crtc*) ; 

__attribute__((used)) static void FUNC2(struct mtk_drm_crtc *mtk_crtc)
{
	FUNC0(&mtk_crtc->base);
	if (mtk_crtc->pending_needs_vblank) {
		FUNC1(mtk_crtc);
		mtk_crtc->pending_needs_vblank = false;
	}
}