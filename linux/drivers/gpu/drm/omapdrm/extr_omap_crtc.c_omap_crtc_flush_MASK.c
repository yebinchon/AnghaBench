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
struct omap_crtc_state {int /*<<< orphan*/  manually_updated; } ;
struct omap_crtc {int /*<<< orphan*/  update_work; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct omap_crtc* FUNC2 (struct drm_crtc*) ; 
 struct omap_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC2(crtc);
	struct omap_crtc_state *omap_state = FUNC3(crtc->state);

	if (!omap_state->manually_updated)
		return;

	if (!FUNC0(&omap_crtc->update_work))
		FUNC1(&omap_crtc->update_work, 0);
}