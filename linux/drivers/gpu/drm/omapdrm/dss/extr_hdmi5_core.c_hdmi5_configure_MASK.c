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
struct videomode {int dummy; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_video_format {int /*<<< orphan*/  packing_mode; } ;
struct hdmi_core_vid_config {int /*<<< orphan*/  packet_mode; } ;
struct hdmi_core_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  quantization_range; } ;
struct hdmi_config {scalar_t__ hdmi_dvi_mode; TYPE_1__ infoframe; } ;

/* Variables and functions */
 scalar_t__ HDMI_HDMI ; 
 int /*<<< orphan*/  HDMI_PACKETMODE24BITPERPIXEL ; 
 int /*<<< orphan*/  HDMI_PACK_24b_RGB_YUV444_YUV422 ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_LIMITED ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi_core_vid_config*,struct hdmi_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdmi_core_data*,struct hdmi_core_vid_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct hdmi_core_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdmi_video_format*,struct videomode*,struct hdmi_config*) ; 
 int /*<<< orphan*/  FUNC11 (struct hdmi_wp_data*,struct hdmi_video_format*) ; 
 int /*<<< orphan*/  FUNC12 (struct hdmi_wp_data*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC13 (struct hdmi_wp_data*,struct videomode*) ; 

void FUNC14(struct hdmi_core_data *core, struct hdmi_wp_data *wp,
		struct hdmi_config *cfg)
{
	struct videomode vm;
	struct hdmi_video_format video_format;
	struct hdmi_core_vid_config v_core_cfg;

	FUNC7(core);

	FUNC6(&v_core_cfg, cfg);

	FUNC10(&video_format, &vm, cfg);

	FUNC13(wp, &vm);

	/* video config */
	video_format.packing_mode = HDMI_PACK_24b_RGB_YUV444_YUV422;

	FUNC11(wp, &video_format);

	FUNC12(wp, &vm);

	/* support limited range with 24 bit color depth for now */
	FUNC3(core);
	cfg->infoframe.quantization_range = HDMI_QUANTIZATION_RANGE_LIMITED;

	/*
	 * configure core video part, set software reset in the core
	 */
	v_core_cfg.packet_mode = HDMI_PACKETMODE24BITPERPIXEL;

	FUNC8(core, &v_core_cfg);

	FUNC1(core);
	FUNC0(core);
	FUNC2(core);

	if (cfg->hdmi_dvi_mode == HDMI_HDMI)
		FUNC9(core, &cfg->infoframe);

	FUNC5(core);

	FUNC4(core);
}