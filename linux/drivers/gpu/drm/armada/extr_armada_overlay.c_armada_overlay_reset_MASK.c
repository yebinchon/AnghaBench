#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_plane {int /*<<< orphan*/ * state; } ;
struct TYPE_4__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  color_encoding; } ;
struct TYPE_3__ {TYPE_2__ base; } ;
struct armada_overlay_state {int colorkey_yr; int colorkey_ug; int colorkey_vb; int colorkey_mode; TYPE_1__ base; int /*<<< orphan*/  saturation; int /*<<< orphan*/  contrast; int /*<<< orphan*/  brightness; int /*<<< orphan*/  colorkey_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV_GRACOLORKEY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CFG_ALPHAM_GRA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CKMODE_RGB ; 
 int /*<<< orphan*/  DEFAULT_BRIGHTNESS ; 
 int /*<<< orphan*/  DEFAULT_CONTRAST ; 
 int /*<<< orphan*/  DEFAULT_ENCODING ; 
 int /*<<< orphan*/  DEFAULT_SATURATION ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct armada_overlay_state* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_plane *plane)
{
	struct armada_overlay_state *state;

	if (plane->state)
		FUNC2(plane->state);
	FUNC4(plane->state);
	plane->state = NULL;

	state = FUNC5(sizeof(*state), GFP_KERNEL);
	if (state) {
		state->colorkey_yr = 0xfefefe00;
		state->colorkey_ug = 0x01010100;
		state->colorkey_vb = 0x01010100;
		state->colorkey_mode = FUNC1(CKMODE_RGB) |
				       CFG_ALPHAM_GRA | FUNC0(0);
		state->colorkey_enable = ADV_GRACOLORKEY;
		state->brightness = DEFAULT_BRIGHTNESS;
		state->contrast = DEFAULT_CONTRAST;
		state->saturation = DEFAULT_SATURATION;
		FUNC3(plane, &state->base.base);
		state->base.base.color_encoding = DEFAULT_ENCODING;
		state->base.base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
	}
}