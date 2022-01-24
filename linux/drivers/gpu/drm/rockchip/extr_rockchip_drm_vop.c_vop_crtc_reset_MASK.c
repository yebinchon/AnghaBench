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
struct rockchip_crtc_state {int /*<<< orphan*/  base; } ;
struct drm_crtc {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct rockchip_crtc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct rockchip_crtc_state *crtc_state =
		FUNC1(sizeof(*crtc_state), GFP_KERNEL);

	if (crtc->state)
		FUNC2(crtc, crtc->state);

	FUNC0(crtc, &crtc_state->base);
}