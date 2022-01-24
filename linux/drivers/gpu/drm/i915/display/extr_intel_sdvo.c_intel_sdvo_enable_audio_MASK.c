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
typedef  int u8 ;
struct intel_sdvo {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int* eld; } ;

/* Variables and functions */
 int SDVO_AUDIO_ELD_VALID ; 
 int SDVO_AUDIO_PRESENCE_DETECT ; 
 int /*<<< orphan*/  SDVO_HBUF_INDEX_ELD ; 
 int /*<<< orphan*/  SDVO_HBUF_TX_DISABLED ; 
 int FUNC0 (struct drm_connector*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_sdvo *intel_sdvo,
				    const struct intel_crtc_state *crtc_state,
				    const struct drm_connector_state *conn_state)
{
	const struct drm_display_mode *adjusted_mode =
		&crtc_state->base.adjusted_mode;
	struct drm_connector *connector = conn_state->connector;
	u8 *eld = connector->eld;

	eld[6] = FUNC0(connector, adjusted_mode) / 2;

	FUNC2(intel_sdvo, 0);

	FUNC3(intel_sdvo, SDVO_HBUF_INDEX_ELD,
				   SDVO_HBUF_TX_DISABLED,
				   eld, FUNC1(eld));

	FUNC2(intel_sdvo, SDVO_AUDIO_ELD_VALID |
				   SDVO_AUDIO_PRESENCE_DETECT);
}