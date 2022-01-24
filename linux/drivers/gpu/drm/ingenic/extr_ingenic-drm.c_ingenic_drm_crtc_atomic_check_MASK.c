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
struct ingenic_drm {int /*<<< orphan*/  pix_clk; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ adjusted_mode; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc_state*) ; 
 struct ingenic_drm* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC3(struct drm_crtc *crtc,
					 struct drm_crtc_state *state)
{
	struct ingenic_drm *priv = FUNC2(crtc);
	long rate;

	if (!FUNC1(state))
		return 0;

	rate = FUNC0(priv->pix_clk,
			      state->adjusted_mode.clock * 1000);
	if (rate < 0)
		return rate;

	return 0;
}