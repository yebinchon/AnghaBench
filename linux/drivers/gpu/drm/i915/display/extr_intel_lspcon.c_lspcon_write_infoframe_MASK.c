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
struct intel_lspcon {scalar_t__ vendor; } ;
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dp {int /*<<< orphan*/  aux; } ;
struct intel_crtc_state {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int HDMI_INFOFRAME_TYPE_AVI ; 
 scalar_t__ LSPCON_VENDOR_MCA ; 
 int FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 struct intel_dp* FUNC4 (int /*<<< orphan*/ *) ; 
 struct intel_lspcon* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_encoder *encoder,
			    const struct intel_crtc_state *crtc_state,
			    unsigned int type,
			    const void *frame, ssize_t len)
{
	bool ret;
	struct intel_dp *intel_dp = FUNC4(&encoder->base);
	struct intel_lspcon *lspcon = FUNC5(&encoder->base);

	/* LSPCON only needs AVI IF */
	if (type != HDMI_INFOFRAME_TYPE_AVI)
		return;

	if (lspcon->vendor == LSPCON_VENDOR_MCA)
		ret = FUNC2(&intel_dp->aux,
						      frame, len);
	else
		ret = FUNC3(&intel_dp->aux,
							 frame, len);

	if (!ret) {
		FUNC1("Failed to write AVI infoframes\n");
		return;
	}

	FUNC0("AVI infoframes updated successfully\n");
}