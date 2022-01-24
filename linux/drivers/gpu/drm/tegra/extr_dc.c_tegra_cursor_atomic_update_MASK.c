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
typedef  int u32 ;
struct tegra_dc {int dummy; } ;
struct tegra_bo {int paddr; } ;
struct drm_plane_state {int crtc_w; int crtc_y; int crtc_x; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;

/* Variables and functions */
 int CURSOR_ALPHA ; 
 int CURSOR_CLIP_DISPLAY ; 
 int CURSOR_DST_BLEND_MASK ; 
 int CURSOR_DST_BLEND_NEG_K1_TIMES_SRC ; 
 int CURSOR_ENABLE ; 
 int CURSOR_MODE_NORMAL ; 
 int CURSOR_SIZE_128x128 ; 
 int CURSOR_SIZE_256x256 ; 
 int CURSOR_SIZE_32x32 ; 
 int CURSOR_SIZE_64x64 ; 
 int CURSOR_SRC_BLEND_K1_TIMES_SRC ; 
 int CURSOR_SRC_BLEND_MASK ; 
 int /*<<< orphan*/  DC_DISP_BLEND_CURSOR_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_CURSOR_POSITION ; 
 int /*<<< orphan*/  DC_DISP_CURSOR_START_ADDR ; 
 int /*<<< orphan*/  DC_DISP_CURSOR_START_ADDR_HI ; 
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 struct tegra_bo* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane,
				       struct drm_plane_state *old_state)
{
	struct tegra_bo *bo = FUNC3(plane->state->fb, 0);
	struct tegra_dc *dc = FUNC4(plane->state->crtc);
	struct drm_plane_state *state = plane->state;
	u32 value = CURSOR_CLIP_DISPLAY;

	/* rien ne va plus */
	if (!plane->state->crtc || !plane->state->fb)
		return;

	switch (state->crtc_w) {
	case 32:
		value |= CURSOR_SIZE_32x32;
		break;

	case 64:
		value |= CURSOR_SIZE_64x64;
		break;

	case 128:
		value |= CURSOR_SIZE_128x128;
		break;

	case 256:
		value |= CURSOR_SIZE_256x256;
		break;

	default:
		FUNC0(1, "cursor size %ux%u not supported\n", state->crtc_w,
		     state->crtc_h);
		return;
	}

	value |= (bo->paddr >> 10) & 0x3fffff;
	FUNC2(dc, value, DC_DISP_CURSOR_START_ADDR);

#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
	value = (bo->paddr >> 32) & 0x3;
	tegra_dc_writel(dc, value, DC_DISP_CURSOR_START_ADDR_HI);
#endif

	/* enable cursor and set blend mode */
	value = FUNC1(dc, DC_DISP_DISP_WIN_OPTIONS);
	value |= CURSOR_ENABLE;
	FUNC2(dc, value, DC_DISP_DISP_WIN_OPTIONS);

	value = FUNC1(dc, DC_DISP_BLEND_CURSOR_CONTROL);
	value &= ~CURSOR_DST_BLEND_MASK;
	value &= ~CURSOR_SRC_BLEND_MASK;
	value |= CURSOR_MODE_NORMAL;
	value |= CURSOR_DST_BLEND_NEG_K1_TIMES_SRC;
	value |= CURSOR_SRC_BLEND_K1_TIMES_SRC;
	value |= CURSOR_ALPHA;
	FUNC2(dc, value, DC_DISP_BLEND_CURSOR_CONTROL);

	/* position the cursor */
	value = (state->crtc_y & 0x3fff) << 16 | (state->crtc_x & 0x3fff);
	FUNC2(dc, value, DC_DISP_CURSOR_POSITION);
}