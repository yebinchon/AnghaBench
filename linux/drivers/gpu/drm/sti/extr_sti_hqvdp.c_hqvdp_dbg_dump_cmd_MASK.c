#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int config; int config2; int dcdi_config; } ;
struct TYPE_5__ {int output_picture_size; int param_ctrl; int /*<<< orphan*/  cv_coef; int /*<<< orphan*/  yv_coef; int /*<<< orphan*/  ch_coef; int /*<<< orphan*/  yh_coef; } ;
struct TYPE_4__ {int config; int mem_format; int current_luma; int current_chroma; int luma_src_pitch; int chroma_src_pitch; int input_frame_size; int input_viewport_size; } ;
struct sti_hqvdp_cmd {TYPE_3__ csdi; TYPE_2__ hvsrc; TYPE_1__ top; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
#define  CSDI_CONFIG_INTER_DIR 132 
#define  CSDI_CONFIG_PROG 131 
#define  TOP_CONFIG_INTER_BTM 130 
#define  TOP_CONFIG_INTER_TOP 129 
#define  TOP_CONFIG_PROGRESSIVE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, struct sti_hqvdp_cmd *c)
{
	int src_w, src_h, dst_w, dst_h;

	FUNC2(s, "\n\tTOP:");
	FUNC1(s, "\n\t %-20s 0x%08X", "Config", c->top.config);
	switch (c->top.config) {
	case TOP_CONFIG_PROGRESSIVE:
		FUNC2(s, "\tProgressive");
		break;
	case TOP_CONFIG_INTER_TOP:
		FUNC2(s, "\tInterlaced, top field");
		break;
	case TOP_CONFIG_INTER_BTM:
		FUNC2(s, "\tInterlaced, bottom field");
		break;
	default:
		FUNC2(s, "\t<UNKNOWN>");
		break;
	}

	FUNC1(s, "\n\t %-20s 0x%08X", "MemFormat", c->top.mem_format);
	FUNC1(s, "\n\t %-20s 0x%08X", "CurrentY", c->top.current_luma);
	FUNC1(s, "\n\t %-20s 0x%08X", "CurrentC", c->top.current_chroma);
	FUNC1(s, "\n\t %-20s 0x%08X", "YSrcPitch", c->top.luma_src_pitch);
	FUNC1(s, "\n\t %-20s 0x%08X", "CSrcPitch",
		   c->top.chroma_src_pitch);
	FUNC1(s, "\n\t %-20s 0x%08X", "InputFrameSize",
		   c->top.input_frame_size);
	FUNC1(s, "\t%dx%d",
		   c->top.input_frame_size & 0x0000FFFF,
		   c->top.input_frame_size >> 16);
	FUNC1(s, "\n\t %-20s 0x%08X", "InputViewportSize",
		   c->top.input_viewport_size);
	src_w = c->top.input_viewport_size & 0x0000FFFF;
	src_h = c->top.input_viewport_size >> 16;
	FUNC1(s, "\t%dx%d", src_w, src_h);

	FUNC2(s, "\n\tHVSRC:");
	FUNC1(s, "\n\t %-20s 0x%08X", "OutputPictureSize",
		   c->hvsrc.output_picture_size);
	dst_w = c->hvsrc.output_picture_size & 0x0000FFFF;
	dst_h = c->hvsrc.output_picture_size >> 16;
	FUNC1(s, "\t%dx%d", dst_w, dst_h);
	FUNC1(s, "\n\t %-20s 0x%08X", "ParamCtrl", c->hvsrc.param_ctrl);

	FUNC1(s, "\n\t %-20s %s", "yh_coef",
		   FUNC0(c->hvsrc.yh_coef));
	FUNC1(s, "\n\t %-20s %s", "ch_coef",
		   FUNC0(c->hvsrc.ch_coef));
	FUNC1(s, "\n\t %-20s %s", "yv_coef",
		   FUNC0(c->hvsrc.yv_coef));
	FUNC1(s, "\n\t %-20s %s", "cv_coef",
		   FUNC0(c->hvsrc.cv_coef));

	FUNC1(s, "\n\t %-20s", "ScaleH");
	if (dst_w > src_w)
		FUNC1(s, " %d/1", dst_w / src_w);
	else
		FUNC1(s, " 1/%d", src_w / dst_w);

	FUNC1(s, "\n\t %-20s", "tScaleV");
	if (dst_h > src_h)
		FUNC1(s, " %d/1", dst_h / src_h);
	else
		FUNC1(s, " 1/%d", src_h / dst_h);

	FUNC2(s, "\n\tCSDI:");
	FUNC1(s, "\n\t %-20s 0x%08X\t", "Config", c->csdi.config);
	switch (c->csdi.config) {
	case CSDI_CONFIG_PROG:
		FUNC2(s, "Bypass");
		break;
	case CSDI_CONFIG_INTER_DIR:
		FUNC2(s, "Deinterlace, directional");
		break;
	default:
		FUNC2(s, "<UNKNOWN>");
		break;
	}

	FUNC1(s, "\n\t %-20s 0x%08X", "Config2", c->csdi.config2);
	FUNC1(s, "\n\t %-20s 0x%08X", "DcdiConfig", c->csdi.dcdi_config);
}