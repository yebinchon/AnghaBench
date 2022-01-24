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
typedef  int uint8_t ;
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int htotal; int hsync_start; int flags; } ;
struct ch7006_tv_norm_info {int dispmode; } ;
struct ch7006_state {int* regs; } ;
struct TYPE_2__ {int* regs; } ;
struct ch7006_encoder_params {int input_format; int xcm; int pcm; scalar_t__ active_detect; scalar_t__ pout_level; scalar_t__ sync_encoding; scalar_t__ sync_direction; scalar_t__ clock_edge; scalar_t__ clock_mode; } ;
struct ch7006_priv {size_t norm; TYPE_1__ saved_state; struct ch7006_mode* mode; struct ch7006_state state; struct ch7006_encoder_params params; } ;
struct ch7006_mode {int dispmode; } ;

/* Variables and functions */
 size_t CH7006_BCLKOUT ; 
 size_t CH7006_BWIDTH ; 
 size_t CH7006_CLKMODE ; 
 int CH7006_CLKMODE_MASTER ; 
 int /*<<< orphan*/  CH7006_CLKMODE_PCM ; 
 int CH7006_CLKMODE_POS_EDGE ; 
 int CH7006_CLKMODE_SUBC_LOCK ; 
 int /*<<< orphan*/  CH7006_CLKMODE_XCM ; 
 size_t CH7006_DETECT ; 
 size_t CH7006_DISPMODE ; 
 size_t CH7006_INPUT_FORMAT ; 
 int /*<<< orphan*/  CH7006_INPUT_FORMAT_FORMAT ; 
 size_t CH7006_INPUT_SYNC ; 
 int CH7006_INPUT_SYNC_EMBEDDED ; 
 int CH7006_INPUT_SYNC_OUTPUT ; 
 int CH7006_INPUT_SYNC_PHSYNC ; 
 int CH7006_INPUT_SYNC_PVSYNC ; 
 size_t CH7006_PLL_CONTROL ; 
 size_t CH7006_POV ; 
 int /*<<< orphan*/  CH7006_POV_START_ACTIVE_8 ; 
 size_t CH7006_START_ACTIVE ; 
 int /*<<< orphan*/  CH7006_START_ACTIVE_0 ; 
 size_t CH7006_SUBC_INC3 ; 
 int CH7006_SUBC_INC3_POUT_3_3V ; 
 size_t CH7006_SUBC_INC4 ; 
 int CH7006_SUBC_INC4_DS_INPUT ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ch7006_state*) ; 
 struct ch7006_tv_norm_info* ch7006_tv_norms ; 
 struct i2c_client* FUNC8 (struct drm_encoder*) ; 
 struct ch7006_priv* FUNC9 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder,
				     struct drm_display_mode *drm_mode,
				     struct drm_display_mode *adjusted_mode)
{
	struct i2c_client *client = FUNC8(encoder);
	struct ch7006_priv *priv = FUNC9(encoder);
	struct ch7006_encoder_params *params = &priv->params;
	struct ch7006_state *state = &priv->state;
	uint8_t *regs = state->regs;
	const struct ch7006_mode *mode = priv->mode;
	const struct ch7006_tv_norm_info *norm = &ch7006_tv_norms[priv->norm];
	int start_active;

	FUNC1(client, "\n");

	regs[CH7006_DISPMODE] = norm->dispmode | mode->dispmode;
	regs[CH7006_BWIDTH] = 0;
	regs[CH7006_INPUT_FORMAT] = FUNC0(CH7006_INPUT_FORMAT_FORMAT,
					 params->input_format);

	regs[CH7006_CLKMODE] = CH7006_CLKMODE_SUBC_LOCK
		| FUNC0(CH7006_CLKMODE_XCM, params->xcm)
		| FUNC0(CH7006_CLKMODE_PCM, params->pcm);
	if (params->clock_mode)
		regs[CH7006_CLKMODE] |= CH7006_CLKMODE_MASTER;
	if (params->clock_edge)
		regs[CH7006_CLKMODE] |= CH7006_CLKMODE_POS_EDGE;

	start_active = (drm_mode->htotal & ~0x7) - (drm_mode->hsync_start & ~0x7);
	regs[CH7006_POV] = FUNC0(CH7006_POV_START_ACTIVE_8, start_active);
	regs[CH7006_START_ACTIVE] = FUNC0(CH7006_START_ACTIVE_0, start_active);

	regs[CH7006_INPUT_SYNC] = 0;
	if (params->sync_direction)
		regs[CH7006_INPUT_SYNC] |= CH7006_INPUT_SYNC_OUTPUT;
	if (params->sync_encoding)
		regs[CH7006_INPUT_SYNC] |= CH7006_INPUT_SYNC_EMBEDDED;
	if (drm_mode->flags & DRM_MODE_FLAG_PVSYNC)
		regs[CH7006_INPUT_SYNC] |= CH7006_INPUT_SYNC_PVSYNC;
	if (drm_mode->flags & DRM_MODE_FLAG_PHSYNC)
		regs[CH7006_INPUT_SYNC] |= CH7006_INPUT_SYNC_PHSYNC;

	regs[CH7006_DETECT] = 0;
	regs[CH7006_BCLKOUT] = 0;

	regs[CH7006_SUBC_INC3] = 0;
	if (params->pout_level)
		regs[CH7006_SUBC_INC3] |= CH7006_SUBC_INC3_POUT_3_3V;

	regs[CH7006_SUBC_INC4] = 0;
	if (params->active_detect)
		regs[CH7006_SUBC_INC4] |= CH7006_SUBC_INC4_DS_INPUT;

	regs[CH7006_PLL_CONTROL] = priv->saved_state.regs[CH7006_PLL_CONTROL];

	FUNC2(encoder);
	FUNC6(encoder);
	FUNC3(encoder);
	FUNC4(encoder);
	FUNC5(encoder);

	FUNC7(client, state);
}