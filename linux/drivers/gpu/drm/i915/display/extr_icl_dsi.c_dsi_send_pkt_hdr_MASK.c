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
typedef  int u32 ;
struct mipi_dsi_packet {int* header; scalar_t__ payload; } ;
struct intel_dsi_host {int /*<<< orphan*/  port; struct intel_dsi* intel_dsi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_dsi {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DT_MASK ; 
 int DT_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int LP_DATA_TRANSFER ; 
 int PARAM_WC_LOWER_SHIFT ; 
 int PARAM_WC_MASK ; 
 int PARAM_WC_UPPER_SHIFT ; 
 int PAYLOAD_PRESENT ; 
 int VBLANK_FENCE ; 
 int VC_MASK ; 
 int VC_SHIFT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct intel_dsi_host *host,
			    struct mipi_dsi_packet pkt, bool enable_lpdt)
{
	struct intel_dsi *intel_dsi = host->intel_dsi;
	struct drm_i915_private *dev_priv = FUNC6(intel_dsi->base.base.dev);
	enum transcoder dsi_trans = FUNC4(host->port);
	u32 tmp;
	int free_credits;

	/* check if header credit available */
	free_credits = FUNC5(dev_priv, dsi_trans);
	if (free_credits < 1) {
		FUNC0("send pkt header failed, not enough hdr credits\n");
		return -1;
	}

	tmp = FUNC2(FUNC1(dsi_trans));

	if (pkt.payload)
		tmp |= PAYLOAD_PRESENT;
	else
		tmp &= ~PAYLOAD_PRESENT;

	tmp &= ~VBLANK_FENCE;

	if (enable_lpdt)
		tmp |= LP_DATA_TRANSFER;

	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
	tmp |= ((pkt.header[0] & VC_MASK) << VC_SHIFT);
	tmp |= ((pkt.header[0] & DT_MASK) << DT_SHIFT);
	tmp |= (pkt.header[1] << PARAM_WC_LOWER_SHIFT);
	tmp |= (pkt.header[2] << PARAM_WC_UPPER_SHIFT);
	FUNC3(FUNC1(dsi_trans), tmp);

	return 0;
}