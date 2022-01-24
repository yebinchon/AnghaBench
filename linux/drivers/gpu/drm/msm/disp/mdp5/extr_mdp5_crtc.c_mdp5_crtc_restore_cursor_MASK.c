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
typedef  int uint32_t ;
struct mdp5_kms {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mixer; } ;
struct mdp5_crtc_state {TYPE_2__ pipeline; } ;
struct TYPE_6__ {int x; int y; int width; int height; int iova; int /*<<< orphan*/  lock; } ;
struct mdp5_crtc {TYPE_3__ cursor; } ;
struct drm_format_info {int* cpp; } ;
struct drm_crtc {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;
typedef  enum mdp5_cursor_alpha { ____Placeholder_mdp5_cursor_alpha } mdp5_cursor_alpha ;
struct TYPE_4__ {int lm; } ;

/* Variables and functions */
 int CURSOR_ALPHA_PER_PIXEL ; 
 int /*<<< orphan*/  CURSOR_FMT_ARGB8888 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  DRM_FORMAT_ARGB8888 ; 
 int FUNC1 (int const) ; 
 int MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct drm_format_info* FUNC21 (int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC22 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_crtc*,int*,int*) ; 
 int /*<<< orphan*/  FUNC24 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 struct mdp5_crtc* FUNC25 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC27(struct drm_crtc *crtc)
{
	const struct drm_format_info *info = FUNC21(DRM_FORMAT_ARGB8888);
	struct mdp5_crtc_state *mdp5_cstate = FUNC26(crtc->state);
	struct mdp5_crtc *mdp5_crtc = FUNC25(crtc);
	struct mdp5_kms *mdp5_kms = FUNC22(crtc);
	const enum mdp5_cursor_alpha cur_alpha = CURSOR_ALPHA_PER_PIXEL;
	uint32_t blendcfg, stride;
	uint32_t x, y, src_x, src_y, width, height;
	uint32_t roi_w, roi_h;
	int lm;

	FUNC20(&mdp5_crtc->cursor.lock);

	lm = mdp5_cstate->pipeline.mixer->lm;

	x = mdp5_crtc->cursor.x;
	y = mdp5_crtc->cursor.y;
	width = mdp5_crtc->cursor.width;
	height = mdp5_crtc->cursor.height;

	stride = width * info->cpp[0];

	FUNC23(crtc, &roi_w, &roi_h);

	/* If cusror buffer overlaps due to rotation on the
	 * upper or left screen border the pixel offset inside
	 * the cursor buffer of the ROI is the positive overlap
	 * distance.
	 */
	if (mdp5_crtc->cursor.x < 0) {
		src_x = FUNC19(mdp5_crtc->cursor.x);
		x = 0;
	} else {
		src_x = 0;
	}
	if (mdp5_crtc->cursor.y < 0) {
		src_y = FUNC19(mdp5_crtc->cursor.y);
		y = 0;
	} else {
		src_y = 0;
	}
	FUNC0("%s: x=%d, y=%d roi_w=%d roi_h=%d src_x=%d src_y=%d",
		crtc->name, x, y, roi_w, roi_h, src_x, src_y);

	FUNC24(mdp5_kms, FUNC17(lm), stride);
	FUNC24(mdp5_kms, FUNC13(lm),
			FUNC2(CURSOR_FMT_ARGB8888));
	FUNC24(mdp5_kms, FUNC14(lm),
			FUNC3(height) |
			FUNC4(width));
	FUNC24(mdp5_kms, FUNC15(lm),
			FUNC5(roi_h) |
			FUNC6(roi_w));
	FUNC24(mdp5_kms, FUNC16(lm),
			FUNC8(y) |
			FUNC7(x));
	FUNC24(mdp5_kms, FUNC18(lm),
			FUNC10(src_y) |
			FUNC9(src_x));
	FUNC24(mdp5_kms, FUNC11(lm),
			mdp5_crtc->cursor.iova);

	blendcfg = MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_EN;
	blendcfg |= FUNC1(cur_alpha);
	FUNC24(mdp5_kms, FUNC12(lm), blendcfg);
}