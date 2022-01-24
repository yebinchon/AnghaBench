#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_4__ engine; TYPE_3__* cfg; } ;
struct drm_plane_state {int /*<<< orphan*/  color_range; int /*<<< orphan*/  color_encoding; TYPE_2__* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct de2_fmt_info {int de2_fmt; scalar_t__ csc; scalar_t__ rgb; } ;
struct TYPE_7__ {scalar_t__ is_de3; } ;
struct TYPE_6__ {TYPE_1__* format; } ;
struct TYPE_5__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (int) ; 
 int SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK ; 
 scalar_t__ SUN8I_CSC_MODE_OFF ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK ; 
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET ; 
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct sun8i_mixer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sun8i_mixer*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sun8i_mixer*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct de2_fmt_info* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sun8i_mixer *mixer, int channel,
					 int overlay, struct drm_plane *plane)
{
	struct drm_plane_state *state = plane->state;
	const struct de2_fmt_info *fmt_info;
	u32 val, ch_base;

	ch_base = FUNC4(mixer, channel);

	fmt_info = FUNC7(state->fb->format->format);
	if (!fmt_info) {
		FUNC0("Invalid format\n");
		return -EINVAL;
	}

	val = fmt_info->de2_fmt << SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET;
	FUNC3(mixer->engine.regs,
			   FUNC2(ch_base, overlay),
			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);

	if (fmt_info->csc != SUN8I_CSC_MODE_OFF) {
		FUNC6(mixer, channel, fmt_info->csc,
						state->color_encoding,
						state->color_range);
		FUNC5(mixer, channel, true);
	} else {
		FUNC5(mixer, channel, false);
	}

	if (fmt_info->rgb)
		val = SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE;
	else
		val = 0;

	FUNC3(mixer->engine.regs,
			   FUNC2(ch_base, overlay),
			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, val);

	/* It seems that YUV formats use global alpha setting. */
	if (mixer->cfg->is_de3)
		FUNC3(mixer->engine.regs,
				   FUNC2(ch_base,
								  overlay),
				   SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK,
				   FUNC1(0xff));

	return 0;
}