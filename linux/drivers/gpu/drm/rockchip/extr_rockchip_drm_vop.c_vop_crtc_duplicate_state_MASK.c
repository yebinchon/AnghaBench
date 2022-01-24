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
struct drm_crtc_state {int dummy; } ;
struct rockchip_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct rockchip_crtc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *FUNC2(struct drm_crtc *crtc)
{
	struct rockchip_crtc_state *rockchip_state;

	rockchip_state = FUNC1(sizeof(*rockchip_state), GFP_KERNEL);
	if (!rockchip_state)
		return NULL;

	FUNC0(crtc, &rockchip_state->base);
	return &rockchip_state->base;
}