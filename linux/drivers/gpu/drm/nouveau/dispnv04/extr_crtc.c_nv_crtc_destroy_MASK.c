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
struct nv04_display {scalar_t__* image; } ;
struct TYPE_2__ {scalar_t__ nvbo; } ;
struct nouveau_crtc {size_t index; TYPE_1__ cursor; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct nouveau_crtc* FUNC5 (struct drm_crtc*) ; 
 struct nv04_display* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	struct nv04_display *disp = FUNC6(crtc->dev);
	struct nouveau_crtc *nv_crtc = FUNC5(crtc);

	if (!nv_crtc)
		return;

	FUNC0(crtc);

	if (disp->image[nv_crtc->index])
		FUNC4(disp->image[nv_crtc->index]);
	FUNC2(NULL, &disp->image[nv_crtc->index]);

	FUNC3(nv_crtc->cursor.nvbo);
	FUNC4(nv_crtc->cursor.nvbo);
	FUNC2(NULL, &nv_crtc->cursor.nvbo);
	FUNC1(nv_crtc);
}