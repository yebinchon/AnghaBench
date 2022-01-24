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
typedef  unsigned int u8 ;
struct hdmi_data_info {unsigned int pix_repet_factor; int /*<<< orphan*/  enc_out_bus_format; } ;
struct dw_hdmi {struct hdmi_data_info hdmi_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_VP_CONF ; 
 unsigned int HDMI_VP_CONF_BYPASS_EN_DISABLE ; 
 unsigned int HDMI_VP_CONF_BYPASS_EN_ENABLE ; 
 int HDMI_VP_CONF_BYPASS_EN_MASK ; 
 int HDMI_VP_CONF_BYPASS_SELECT_MASK ; 
 unsigned int HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER ; 
 unsigned int HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER ; 
 unsigned int HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS ; 
 int HDMI_VP_CONF_OUTPUT_SELECTOR_MASK ; 
 unsigned int HDMI_VP_CONF_OUTPUT_SELECTOR_PP ; 
 unsigned int HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422 ; 
 unsigned int HDMI_VP_CONF_PP_EN_DISABLE ; 
 unsigned int HDMI_VP_CONF_PP_EN_ENABLE ; 
 int HDMI_VP_CONF_PP_EN_ENMASK ; 
 unsigned int HDMI_VP_CONF_PR_EN_DISABLE ; 
 unsigned int HDMI_VP_CONF_PR_EN_ENABLE ; 
 int HDMI_VP_CONF_PR_EN_MASK ; 
 unsigned int HDMI_VP_CONF_YCC422_EN_DISABLE ; 
 unsigned int HDMI_VP_CONF_YCC422_EN_ENABLE ; 
 int HDMI_VP_CONF_YCC422_EN_MASK ; 
 int /*<<< orphan*/  HDMI_VP_PR_CD ; 
 unsigned int HDMI_VP_PR_CD_COLOR_DEPTH_MASK ; 
 unsigned int HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET ; 
 unsigned int HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK ; 
 unsigned int HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET ; 
 int /*<<< orphan*/  HDMI_VP_REMAP ; 
 unsigned int HDMI_VP_REMAP_YCC422_16bit ; 
 unsigned int HDMI_VP_REMAP_YCC422_20bit ; 
 unsigned int HDMI_VP_REMAP_YCC422_24bit ; 
 int /*<<< orphan*/  HDMI_VP_STUFF ; 
 int HDMI_VP_STUFF_IDEFAULT_PHASE_MASK ; 
 int HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET ; 
 int HDMI_VP_STUFF_PP_STUFFING_MASK ; 
 unsigned int HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE ; 
 int HDMI_VP_STUFF_PR_STUFFING_MASK ; 
 unsigned int HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE ; 
 int HDMI_VP_STUFF_YCC422_STUFFING_MASK ; 
 unsigned int HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_hdmi*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_hdmi*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dw_hdmi *hdmi)
{
	unsigned int color_depth = 0;
	unsigned int remap_size = HDMI_VP_REMAP_YCC422_16bit;
	unsigned int output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_PP;
	struct hdmi_data_info *hdmi_data = &hdmi->hdmi_data;
	u8 val, vp_conf;

	if (FUNC1(hdmi->hdmi_data.enc_out_bus_format) ||
	    FUNC4(hdmi->hdmi_data.enc_out_bus_format) ||
	    FUNC2(hdmi->hdmi_data.enc_out_bus_format)) {
		switch (FUNC0(
					hdmi->hdmi_data.enc_out_bus_format)) {
		case 8:
			color_depth = 4;
			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
			break;
		case 10:
			color_depth = 5;
			break;
		case 12:
			color_depth = 6;
			break;
		case 16:
			color_depth = 7;
			break;
		default:
			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
		}
	} else if (FUNC3(hdmi->hdmi_data.enc_out_bus_format)) {
		switch (FUNC0(
					hdmi->hdmi_data.enc_out_bus_format)) {
		case 0:
		case 8:
			remap_size = HDMI_VP_REMAP_YCC422_16bit;
			break;
		case 10:
			remap_size = HDMI_VP_REMAP_YCC422_20bit;
			break;
		case 12:
			remap_size = HDMI_VP_REMAP_YCC422_24bit;
			break;

		default:
			return;
		}
		output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422;
	} else {
		return;
	}

	/* set the packetizer registers */
	val = ((color_depth << HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET) &
		HDMI_VP_PR_CD_COLOR_DEPTH_MASK) |
		((hdmi_data->pix_repet_factor <<
		HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET) &
		HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK);
	FUNC6(hdmi, val, HDMI_VP_PR_CD);

	FUNC5(hdmi, HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE,
		  HDMI_VP_STUFF_PR_STUFFING_MASK, HDMI_VP_STUFF);

	/* Data from pixel repeater block */
	if (hdmi_data->pix_repet_factor > 1) {
		vp_conf = HDMI_VP_CONF_PR_EN_ENABLE |
			  HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER;
	} else { /* data from packetizer block */
		vp_conf = HDMI_VP_CONF_PR_EN_DISABLE |
			  HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER;
	}

	FUNC5(hdmi, vp_conf,
		  HDMI_VP_CONF_PR_EN_MASK |
		  HDMI_VP_CONF_BYPASS_SELECT_MASK, HDMI_VP_CONF);

	FUNC5(hdmi, 1 << HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET,
		  HDMI_VP_STUFF_IDEFAULT_PHASE_MASK, HDMI_VP_STUFF);

	FUNC6(hdmi, remap_size, HDMI_VP_REMAP);

	if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_PP) {
		vp_conf = HDMI_VP_CONF_BYPASS_EN_DISABLE |
			  HDMI_VP_CONF_PP_EN_ENABLE |
			  HDMI_VP_CONF_YCC422_EN_DISABLE;
	} else if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422) {
		vp_conf = HDMI_VP_CONF_BYPASS_EN_DISABLE |
			  HDMI_VP_CONF_PP_EN_DISABLE |
			  HDMI_VP_CONF_YCC422_EN_ENABLE;
	} else if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS) {
		vp_conf = HDMI_VP_CONF_BYPASS_EN_ENABLE |
			  HDMI_VP_CONF_PP_EN_DISABLE |
			  HDMI_VP_CONF_YCC422_EN_DISABLE;
	} else {
		return;
	}

	FUNC5(hdmi, vp_conf,
		  HDMI_VP_CONF_BYPASS_EN_MASK | HDMI_VP_CONF_PP_EN_ENMASK |
		  HDMI_VP_CONF_YCC422_EN_MASK, HDMI_VP_CONF);

	FUNC5(hdmi, HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE |
			HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE,
		  HDMI_VP_STUFF_PP_STUFFING_MASK |
		  HDMI_VP_STUFF_YCC422_STUFFING_MASK, HDMI_VP_STUFF);

	FUNC5(hdmi, output_select, HDMI_VP_CONF_OUTPUT_SELECTOR_MASK,
		  HDMI_VP_CONF);
}