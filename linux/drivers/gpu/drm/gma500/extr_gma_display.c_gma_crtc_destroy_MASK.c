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
struct gma_crtc {struct gma_crtc* crtc_state; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_crtc*) ; 
 struct gma_crtc* FUNC2 (struct drm_crtc*) ; 

void FUNC3(struct drm_crtc *crtc)
{
	struct gma_crtc *gma_crtc = FUNC2(crtc);

	FUNC1(gma_crtc->crtc_state);
	FUNC0(crtc);
	FUNC1(gma_crtc);
}