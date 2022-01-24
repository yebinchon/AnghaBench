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
struct nv04_display {scalar_t__* image; } ;
struct nouveau_crtc {size_t index; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct nouveau_crtc* FUNC2 (struct drm_crtc*) ; 
 struct nv04_display* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct drm_crtc *crtc)
{
	struct nv04_display *disp = FUNC3(crtc->dev);
	struct nouveau_crtc *nv_crtc = FUNC2(crtc);
	if (disp->image[nv_crtc->index])
		FUNC1(disp->image[nv_crtc->index]);
	FUNC0(NULL, &disp->image[nv_crtc->index]);
}