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
typedef  scalar_t__ uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct crc_params {int windowa_x_start; int windowa_x_end; int windowa_y_start; int windowa_y_end; int windowb_x_start; int windowb_x_end; int windowb_y_start; int windowb_y_end; int selection; scalar_t__ continuous_mode; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_CRC0_SELECT ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_X_CONTROL ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_X_END ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_X_START ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_Y_CONTROL ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_Y_END ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWA_Y_START ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_X_CONTROL ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_X_END ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_X_START ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_Y_CONTROL ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_Y_END ; 
 int /*<<< orphan*/  CRTC_CRC0_WINDOWB_Y_START ; 
 int /*<<< orphan*/  CRTC_CRC_CNTL ; 
 int /*<<< orphan*/  CRTC_CRC_CONT_EN ; 
 int /*<<< orphan*/  CRTC_CRC_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  mmCRTC_CRC0_WINDOWA_X_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_CRC0_WINDOWA_Y_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_CRC0_WINDOWB_X_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_CRC0_WINDOWB_Y_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_CRC_CNTL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(struct timing_generator *tg,
			  const struct crc_params *params)
{
	uint32_t cntl_addr = 0;
	uint32_t addr = 0;
	uint32_t value;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	/* Cannot configure crc on a CRTC that is disabled */
	if (!FUNC2(tg))
		return false;

	cntl_addr = FUNC0(mmCRTC_CRC_CNTL);

	/* First, disable CRC before we configure it. */
	FUNC3(tg->ctx, cntl_addr, 0);

	if (!params->enable)
		return true;

	/* Program frame boundaries */
	/* Window A x axis start and end. */
	value = 0;
	addr = FUNC0(mmCRTC_CRC0_WINDOWA_X_CONTROL);
	FUNC4(value, params->windowa_x_start,
			    CRTC_CRC0_WINDOWA_X_CONTROL,
			    CRTC_CRC0_WINDOWA_X_START);
	FUNC4(value, params->windowa_x_end,
			    CRTC_CRC0_WINDOWA_X_CONTROL,
			    CRTC_CRC0_WINDOWA_X_END);
	FUNC3(tg->ctx, addr, value);

	/* Window A y axis start and end. */
	value = 0;
	addr = FUNC0(mmCRTC_CRC0_WINDOWA_Y_CONTROL);
	FUNC4(value, params->windowa_y_start,
			    CRTC_CRC0_WINDOWA_Y_CONTROL,
			    CRTC_CRC0_WINDOWA_Y_START);
	FUNC4(value, params->windowa_y_end,
			    CRTC_CRC0_WINDOWA_Y_CONTROL,
			    CRTC_CRC0_WINDOWA_Y_END);
	FUNC3(tg->ctx, addr, value);

	/* Window B x axis start and end. */
	value = 0;
	addr = FUNC0(mmCRTC_CRC0_WINDOWB_X_CONTROL);
	FUNC4(value, params->windowb_x_start,
			    CRTC_CRC0_WINDOWB_X_CONTROL,
			    CRTC_CRC0_WINDOWB_X_START);
	FUNC4(value, params->windowb_x_end,
			    CRTC_CRC0_WINDOWB_X_CONTROL,
			    CRTC_CRC0_WINDOWB_X_END);
	FUNC3(tg->ctx, addr, value);

	/* Window B y axis start and end. */
	value = 0;
	addr = FUNC0(mmCRTC_CRC0_WINDOWB_Y_CONTROL);
	FUNC4(value, params->windowb_y_start,
			    CRTC_CRC0_WINDOWB_Y_CONTROL,
			    CRTC_CRC0_WINDOWB_Y_START);
	FUNC4(value, params->windowb_y_end,
			    CRTC_CRC0_WINDOWB_Y_CONTROL,
			    CRTC_CRC0_WINDOWB_Y_END);
	FUNC3(tg->ctx, addr, value);

	/* Set crc mode and selection, and enable. Only using CRC0*/
	value = 0;
	FUNC4(value, params->continuous_mode ? 1 : 0,
			    CRTC_CRC_CNTL, CRTC_CRC_CONT_EN);
	FUNC4(value, params->selection,
			    CRTC_CRC_CNTL, CRTC_CRC0_SELECT);
	FUNC4(value, 1, CRTC_CRC_CNTL, CRTC_CRC_EN);
	FUNC3(tg->ctx, cntl_addr, value);

	return true;
}