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
struct drm_crtc {int dummy; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct aspeed_gfx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aspeed_gfx*) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_gfx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 struct aspeed_gfx* FUNC3 (struct drm_simple_display_pipe*) ; 

__attribute__((used)) static void FUNC4(struct drm_simple_display_pipe *pipe,
			      struct drm_crtc_state *crtc_state,
			      struct drm_plane_state *plane_state)
{
	struct aspeed_gfx *priv = FUNC3(pipe);
	struct drm_crtc *crtc = &pipe->crtc;

	FUNC0(priv);
	FUNC1(priv);
	FUNC2(crtc);
}