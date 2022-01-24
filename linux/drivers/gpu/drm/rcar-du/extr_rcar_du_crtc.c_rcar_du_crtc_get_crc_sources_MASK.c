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
struct rcar_du_crtc {size_t sources_count; char const* const* sources; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct rcar_du_crtc* FUNC0 (struct drm_crtc*) ; 

__attribute__((used)) static const char *const *
FUNC1(struct drm_crtc *crtc, size_t *count)
{
	struct rcar_du_crtc *rcrtc = FUNC0(crtc);

	*count = rcrtc->sources_count;
	return rcrtc->sources;
}