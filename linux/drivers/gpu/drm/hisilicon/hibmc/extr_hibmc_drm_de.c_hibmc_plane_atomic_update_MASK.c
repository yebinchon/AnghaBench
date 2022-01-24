#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hibmc_framebuffer {int /*<<< orphan*/  obj; } ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_plane_state {TYPE_3__* fb; } ;
struct drm_plane {TYPE_1__* dev; struct drm_plane_state* state; } ;
struct drm_gem_vram_object {int dummy; } ;
typedef  scalar_t__ s64 ;
struct TYPE_6__ {int width; TYPE_2__* format; } ;
struct TYPE_5__ {int* cpp; } ;
struct TYPE_4__ {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_GEM_VRAM_PL_FLAG_VRAM ; 
 scalar_t__ HIBMC_CRT_DISP_CTL ; 
 int /*<<< orphan*/  HIBMC_CRT_DISP_CTL_FORMAT ; 
 int HIBMC_CRT_DISP_CTL_FORMAT_MASK ; 
 scalar_t__ HIBMC_CRT_FB_ADDRESS ; 
 scalar_t__ HIBMC_CRT_FB_WIDTH ; 
 int /*<<< orphan*/  HIBMC_CRT_FB_WIDTH_OFFS ; 
 int /*<<< orphan*/  HIBMC_CRT_FB_WIDTH_WIDTH ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int,unsigned int) ; 
 struct drm_gem_vram_object* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_gem_vram_object*) ; 
 int FUNC5 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_vram_object*) ; 
 int FUNC7 (scalar_t__) ; 
 struct hibmc_framebuffer* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct drm_plane *plane,
				      struct drm_plane_state *old_state)
{
	struct drm_plane_state	*state	= plane->state;
	u32 reg;
	int ret;
	s64 gpu_addr = 0;
	unsigned int line_l;
	struct hibmc_drm_private *priv = plane->dev->dev_private;
	struct hibmc_framebuffer *hibmc_fb;
	struct drm_gem_vram_object *gbo;

	if (!state->fb)
		return;

	hibmc_fb = FUNC8(state->fb);
	gbo = FUNC3(hibmc_fb->obj);

	ret = FUNC5(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
	if (ret) {
		FUNC0("failed to pin bo: %d", ret);
		return;
	}
	gpu_addr = FUNC4(gbo);
	if (gpu_addr < 0) {
		FUNC6(gbo);
		return;
	}

	FUNC9(gpu_addr, priv->mmio + HIBMC_CRT_FB_ADDRESS);

	reg = state->fb->width * (state->fb->format->cpp[0]);
	/* now line_pad is 16 */
	reg = FUNC2(16, reg);

	line_l = state->fb->width * state->fb->format->cpp[0];
	line_l = FUNC2(16, line_l);
	FUNC9(FUNC1(HIBMC_CRT_FB_WIDTH_WIDTH, reg) |
	       FUNC1(HIBMC_CRT_FB_WIDTH_OFFS, line_l),
	       priv->mmio + HIBMC_CRT_FB_WIDTH);

	/* SET PIXEL FORMAT */
	reg = FUNC7(priv->mmio + HIBMC_CRT_DISP_CTL);
	reg &= ~HIBMC_CRT_DISP_CTL_FORMAT_MASK;
	reg |= FUNC1(HIBMC_CRT_DISP_CTL_FORMAT,
			   state->fb->format->cpp[0] * 8 / 16);
	FUNC9(reg, priv->mmio + HIBMC_CRT_DISP_CTL);
}