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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int /*<<< orphan*/ * eld; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  G4X_AUD_CNTL_ST ; 
 int /*<<< orphan*/  G4X_AUD_VID_DID ; 
 int G4X_ELDV_DEVCL_DEVBLC ; 
 int G4X_ELDV_DEVCTG ; 
 int G4X_ELD_ADDR_MASK ; 
 int /*<<< orphan*/  G4X_HDMIW_HDMIEDID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int INTEL_AUDIO_DEVBLC ; 
 int INTEL_AUDIO_DEVCL ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct drm_connector*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
				   const struct intel_crtc_state *crtc_state,
				   const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct drm_connector *connector = conn_state->connector;
	const u8 *eld = connector->eld;
	u32 eldv;
	u32 tmp;
	int len, i;

	FUNC1("Enable audio codec, %u bytes ELD\n", FUNC4(eld));

	tmp = FUNC2(G4X_AUD_VID_DID);
	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
		eldv = G4X_ELDV_DEVCL_DEVBLC;
	else
		eldv = G4X_ELDV_DEVCTG;

	if (FUNC5(connector,
			       G4X_AUD_CNTL_ST, eldv,
			       G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
			       G4X_HDMIW_HDMIEDID))
		return;

	tmp = FUNC2(G4X_AUD_CNTL_ST);
	tmp &= ~(eldv | G4X_ELD_ADDR_MASK);
	len = (tmp >> 9) & 0x1f;		/* ELD buffer size */
	FUNC3(G4X_AUD_CNTL_ST, tmp);

	len = FUNC6(FUNC4(eld) / 4, len);
	FUNC0("ELD size %d\n", len);
	for (i = 0; i < len; i++)
		FUNC3(G4X_HDMIW_HDMIEDID, *((const u32 *)eld + i));

	tmp = FUNC2(G4X_AUD_CNTL_ST);
	tmp |= eldv;
	FUNC3(G4X_AUD_CNTL_ST, tmp);
}