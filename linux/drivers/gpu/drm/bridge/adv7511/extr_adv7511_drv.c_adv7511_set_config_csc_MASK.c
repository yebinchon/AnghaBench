#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int color_formats; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_5__ {int colorspace; int /*<<< orphan*/  scan_mode; } ;
struct adv7511_video_config {int hdmi_mode; int csc_enable; TYPE_2__ avi_infoframe; int /*<<< orphan*/  csc_scaling_factor; int /*<<< orphan*/  csc_coefficents; } ;
struct adv7511 {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  infoframe ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_CSC_SCALING_4 ; 
 unsigned int ADV7511_HDMI_CFG_MODE_DVI ; 
 unsigned int ADV7511_HDMI_CFG_MODE_HDMI ; 
 int ADV7511_HDMI_CFG_MODE_MASK ; 
 int /*<<< orphan*/  ADV7511_PACKET_ENABLE_AVI_INFOFRAME ; 
 int /*<<< orphan*/  ADV7511_REG_AVI_INFOFRAME_VERSION ; 
 int /*<<< orphan*/  ADV7511_REG_HDCP_HDMI_CFG ; 
 int /*<<< orphan*/  ADV7511_REG_VIDEO_INPUT_CFG1 ; 
 int DRM_COLOR_FORMAT_YCRCB422 ; 
 void* HDMI_COLORSPACE_RGB ; 
#define  HDMI_COLORSPACE_YUV422 129 
#define  HDMI_COLORSPACE_YUV444 128 
 int /*<<< orphan*/  HDMI_SCAN_MODE_UNDERSCAN ; 
 int /*<<< orphan*/  adv7511_csc_ycbcr_to_rgb ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adv7511*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct adv7511 *adv7511,
				   struct drm_connector *connector,
				   bool rgb, bool hdmi_mode)
{
	struct adv7511_video_config config;
	bool output_format_422, output_format_ycbcr;
	unsigned int mode;
	uint8_t infoframe[17];

	config.hdmi_mode = hdmi_mode;

	FUNC3(&config.avi_infoframe);

	config.avi_infoframe.scan_mode = HDMI_SCAN_MODE_UNDERSCAN;

	if (rgb) {
		config.csc_enable = false;
		config.avi_infoframe.colorspace = HDMI_COLORSPACE_RGB;
	} else {
		config.csc_scaling_factor = ADV7511_CSC_SCALING_4;
		config.csc_coefficents = adv7511_csc_ycbcr_to_rgb;

		if ((connector->display_info.color_formats &
		     DRM_COLOR_FORMAT_YCRCB422) &&
		    config.hdmi_mode) {
			config.csc_enable = false;
			config.avi_infoframe.colorspace =
				HDMI_COLORSPACE_YUV422;
		} else {
			config.csc_enable = true;
			config.avi_infoframe.colorspace = HDMI_COLORSPACE_RGB;
		}
	}

	if (config.hdmi_mode) {
		mode = ADV7511_HDMI_CFG_MODE_HDMI;

		switch (config.avi_infoframe.colorspace) {
		case HDMI_COLORSPACE_YUV444:
			output_format_422 = false;
			output_format_ycbcr = true;
			break;
		case HDMI_COLORSPACE_YUV422:
			output_format_422 = true;
			output_format_ycbcr = true;
			break;
		default:
			output_format_422 = false;
			output_format_ycbcr = false;
			break;
		}
	} else {
		mode = ADV7511_HDMI_CFG_MODE_DVI;
		output_format_422 = false;
		output_format_ycbcr = false;
	}

	FUNC0(adv7511, ADV7511_PACKET_ENABLE_AVI_INFOFRAME);

	FUNC2(adv7511, config.csc_enable,
			     config.csc_coefficents,
			     config.csc_scaling_factor);

	FUNC6(adv7511->regmap, ADV7511_REG_VIDEO_INPUT_CFG1, 0x81,
			   (output_format_422 << 7) | output_format_ycbcr);

	FUNC6(adv7511->regmap, ADV7511_REG_HDCP_HDMI_CFG,
			   ADV7511_HDMI_CFG_MODE_MASK, mode);

	FUNC4(&config.avi_infoframe, infoframe,
				sizeof(infoframe));

	/* The AVI infoframe id is not configurable */
	FUNC5(adv7511->regmap, ADV7511_REG_AVI_INFOFRAME_VERSION,
			  infoframe + 1, sizeof(infoframe) - 1);

	FUNC1(adv7511, ADV7511_PACKET_ENABLE_AVI_INFOFRAME);
}