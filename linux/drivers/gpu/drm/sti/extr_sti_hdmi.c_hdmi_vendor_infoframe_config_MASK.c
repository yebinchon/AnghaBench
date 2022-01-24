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
typedef  int /*<<< orphan*/  u8 ;
struct drm_display_mode {int dummy; } ;
struct sti_hdmi {int /*<<< orphan*/  drm_connector; struct drm_display_mode mode; } ;
struct hdmi_vendor_infoframe {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int HDMI_INFOFRAME_HEADER_SIZE ; 
 int HDMI_VENDOR_INFOFRAME_MAX_SIZE ; 
 int FUNC2 (struct hdmi_vendor_infoframe*,int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_hdmi*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct hdmi_vendor_infoframe*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct sti_hdmi *hdmi)
{
	struct drm_display_mode *mode = &hdmi->mode;
	struct hdmi_vendor_infoframe infoframe;
	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_VENDOR_INFOFRAME_MAX_SIZE];
	int ret;

	FUNC0("\n");

	ret = FUNC2(&infoframe,
							  hdmi->drm_connector,
							  mode);
	if (ret < 0) {
		/*
		 * Going into that statement does not means vendor infoframe
		 * fails. It just informed us that vendor infoframe is not
		 * needed for the selected mode. Only  4k or stereoscopic 3D
		 * mode requires vendor infoframe. So just simply return 0.
		 */
		return 0;
	}

	ret = FUNC4(&infoframe, buffer, sizeof(buffer));
	if (ret < 0) {
		FUNC1("failed to pack VS infoframe: %d\n", ret);
		return ret;
	}

	FUNC3(hdmi, buffer, ret);

	return 0;
}