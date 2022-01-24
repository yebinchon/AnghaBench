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
struct TYPE_4__ {scalar_t__ type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef  int /*<<< orphan*/  u8 ;
struct intel_sdvo {int dummy; } ;
struct TYPE_3__ {int enable; union hdmi_infoframe avi; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  sdvo_data ;

/* Variables and functions */
 int /*<<< orphan*/  AVI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HDMI_INFOFRAME_TYPE_AVI ; 
 int /*<<< orphan*/  SDVO_HBUF_INDEX_AVI_IF ; 
 int /*<<< orphan*/  SDVO_HBUF_TX_VSYNC ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (union hdmi_infoframe const*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct intel_sdvo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct intel_sdvo *intel_sdvo,
					 const struct intel_crtc_state *crtc_state)
{
	u8 sdvo_data[FUNC0(AVI)];
	const union hdmi_infoframe *frame = &crtc_state->infoframes.avi;
	ssize_t len;

	if ((crtc_state->infoframes.enable &
	     FUNC3(HDMI_INFOFRAME_TYPE_AVI)) == 0)
		return true;

	if (FUNC1(frame->any.type != HDMI_INFOFRAME_TYPE_AVI))
		return false;

	len = FUNC2(frame, sdvo_data, sizeof(sdvo_data));
	if (FUNC1(len < 0))
		return false;

	return FUNC4(intel_sdvo, SDVO_HBUF_INDEX_AVI_IF,
					  SDVO_HBUF_TX_VSYNC,
					  sdvo_data, len);
}