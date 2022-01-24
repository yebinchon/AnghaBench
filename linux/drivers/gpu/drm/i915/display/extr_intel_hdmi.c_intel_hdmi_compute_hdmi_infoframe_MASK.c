#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct intel_encoder {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  adjusted_mode; } ;
struct hdmi_vendor_infoframe {int dummy; } ;
struct TYPE_7__ {struct hdmi_vendor_infoframe hdmi; } ;
struct TYPE_8__ {TYPE_2__ vendor; } ;
struct TYPE_9__ {int /*<<< orphan*/  enable; TYPE_3__ hdmi; } ;
struct intel_crtc_state {TYPE_1__ base; TYPE_4__ infoframes; int /*<<< orphan*/  has_infoframe; } ;
struct drm_display_info {int /*<<< orphan*/  has_hdmi_infoframe; } ;
struct drm_connector_state {TYPE_5__* connector; } ;
struct TYPE_10__ {struct drm_display_info display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_VENDOR ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hdmi_vendor_infoframe*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hdmi_vendor_infoframe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct intel_encoder *encoder,
				  struct intel_crtc_state *crtc_state,
				  struct drm_connector_state *conn_state)
{
	struct hdmi_vendor_infoframe *frame =
		&crtc_state->infoframes.hdmi.vendor.hdmi;
	const struct drm_display_info *info =
		&conn_state->connector->display_info;
	int ret;

	if (!crtc_state->has_infoframe || !info->has_hdmi_infoframe)
		return true;

	crtc_state->infoframes.enable |=
		FUNC3(HDMI_INFOFRAME_TYPE_VENDOR);

	ret = FUNC1(frame,
							  conn_state->connector,
							  &crtc_state->base.adjusted_mode);
	if (FUNC0(ret))
		return false;

	ret = FUNC2(frame);
	if (FUNC0(ret))
		return false;

	return true;
}