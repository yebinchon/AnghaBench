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
struct aspeed_gfx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aspeed_gfx*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 struct aspeed_gfx* FUNC2 (struct drm_simple_display_pipe*) ; 

__attribute__((used)) static void FUNC3(struct drm_simple_display_pipe *pipe)
{
	struct aspeed_gfx *priv = FUNC2(pipe);
	struct drm_crtc *crtc = &pipe->crtc;

	FUNC1(crtc);
	FUNC0(priv);
}