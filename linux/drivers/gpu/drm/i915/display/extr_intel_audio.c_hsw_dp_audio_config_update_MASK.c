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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct i915_audio_component {int* aud_sample_rate; } ;
struct drm_i915_private {struct i915_audio_component* audio_component; } ;
struct dp_aud_n_m {int /*<<< orphan*/  m; int /*<<< orphan*/  n; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_CONFIG_M_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUD_CONFIG_N_MASK ; 
 int /*<<< orphan*/  AUD_CONFIG_N_PROG_ENABLE ; 
 int /*<<< orphan*/  AUD_CONFIG_N_VALUE_INDEX ; 
 int /*<<< orphan*/  AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK ; 
 int /*<<< orphan*/  AUD_M_CTS_M_PROG_ENABLE ; 
 int /*<<< orphan*/  AUD_M_CTS_M_VALUE_INDEX ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dp_aud_n_m* FUNC6 (struct intel_crtc_state const*,int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct intel_encoder *encoder,
			   const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct i915_audio_component *acomp = dev_priv->audio_component;
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	enum port port = encoder->port;
	const struct dp_aud_n_m *nm;
	int rate;
	u32 tmp;

	rate = acomp ? acomp->aud_sample_rate[port] : 0;
	nm = FUNC6(crtc_state, rate);
	if (nm)
		FUNC1("using Maud %u, Naud %u\n", nm->m, nm->n);
	else
		FUNC1("using automatic Maud, Naud\n");

	tmp = FUNC4(FUNC2(cpu_transcoder));
	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
	tmp |= AUD_CONFIG_N_VALUE_INDEX;

	if (nm) {
		tmp &= ~AUD_CONFIG_N_MASK;
		tmp |= FUNC0(nm->n);
		tmp |= AUD_CONFIG_N_PROG_ENABLE;
	}

	FUNC5(FUNC2(cpu_transcoder), tmp);

	tmp = FUNC4(FUNC3(cpu_transcoder));
	tmp &= ~AUD_CONFIG_M_MASK;
	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;

	if (nm) {
		tmp |= nm->m;
		tmp |= AUD_M_CTS_M_VALUE_INDEX;
		tmp |= AUD_M_CTS_M_PROG_ENABLE;
	}

	FUNC5(FUNC3(cpu_transcoder), tmp);
}