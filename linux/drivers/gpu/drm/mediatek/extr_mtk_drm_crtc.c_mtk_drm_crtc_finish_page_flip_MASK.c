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
struct drm_crtc {TYPE_1__* dev; } ;
struct mtk_drm_crtc {int /*<<< orphan*/ * event; struct drm_crtc base; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mtk_drm_crtc *mtk_crtc)
{
	struct drm_crtc *crtc = &mtk_crtc->base;
	unsigned long flags;

	FUNC2(&crtc->dev->event_lock, flags);
	FUNC0(crtc, mtk_crtc->event);
	FUNC1(crtc);
	mtk_crtc->event = NULL;
	FUNC3(&crtc->dev->event_lock, flags);
}