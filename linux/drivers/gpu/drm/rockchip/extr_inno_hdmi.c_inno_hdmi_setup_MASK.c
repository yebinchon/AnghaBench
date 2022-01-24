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
struct TYPE_2__ {int vic; scalar_t__ sink_is_hdmi; int /*<<< orphan*/  colorimetry; void* enc_out_format; void* enc_in_format; } ;
struct inno_hdmi {int tmds_rate; TYPE_1__ hdmi_data; } ;
struct drm_display_mode {int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_AV_MUTE ; 
 int /*<<< orphan*/  HDMI_COLORIMETRY_ITU_601 ; 
 int /*<<< orphan*/  HDMI_COLORIMETRY_ITU_709 ; 
 void* HDMI_COLORSPACE_RGB ; 
 int /*<<< orphan*/  HDMI_HDCP_CTRL ; 
 int FUNC0 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inno_hdmi*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inno_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inno_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inno_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct inno_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inno_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inno_hdmi*) ; 
 int m_AUDIO_MUTE ; 
 int m_VIDEO_BLACK ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct inno_hdmi *hdmi,
			   struct drm_display_mode *mode)
{
	hdmi->hdmi_data.vic = FUNC0(mode);

	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;

	if ((hdmi->hdmi_data.vic == 6) || (hdmi->hdmi_data.vic == 7) ||
	    (hdmi->hdmi_data.vic == 21) || (hdmi->hdmi_data.vic == 22) ||
	    (hdmi->hdmi_data.vic == 2) || (hdmi->hdmi_data.vic == 3) ||
	    (hdmi->hdmi_data.vic == 17) || (hdmi->hdmi_data.vic == 18))
		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
	else
		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

	/* Mute video and audio output */
	FUNC1(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
		  FUNC8(1) | FUNC10(1));

	/* Set HDMI Mode */
	FUNC2(hdmi, HDMI_HDCP_CTRL,
		    FUNC9(hdmi->hdmi_data.sink_is_hdmi));

	FUNC5(hdmi, mode);

	FUNC4(hdmi);

	if (hdmi->hdmi_data.sink_is_hdmi) {
		FUNC3(hdmi, mode);
		FUNC6(hdmi, mode);
	}

	/*
	 * When IP controller have configured to an accurate video
	 * timing, then the TMDS clock source would be switched to
	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
	 * clock rate, and reconfigure the DDC clock.
	 */
	hdmi->tmds_rate = mode->clock * 1000;
	FUNC7(hdmi);

	/* Unmute video and audio output */
	FUNC1(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
		  FUNC8(0) | FUNC10(0));

	return 0;
}