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
struct videomode {int dummy; } ;
struct omap_crtc {struct videomode vm; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct omap_crtc* FUNC0 (struct drm_crtc*) ; 

struct videomode *FUNC1(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC0(crtc);
	return &omap_crtc->vm;
}