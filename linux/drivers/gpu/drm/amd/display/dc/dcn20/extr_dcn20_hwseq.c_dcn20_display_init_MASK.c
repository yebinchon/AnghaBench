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
struct dce_hwseq {int dummy; } ;
struct dc {struct dce_hwseq* hwseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZALIA_AUDIO_DTO ; 
 int /*<<< orphan*/  AZALIA_AUDIO_DTO_MODULE ; 
 int /*<<< orphan*/  AZALIA_CONTROLLER_CLOCK_GATING ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_CNTL ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_ENABLE ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_REFDIV ; 
 int /*<<< orphan*/  DC_MEM_GLOBAL_PWR_REQ_CNTL ; 
 int /*<<< orphan*/  DC_MEM_GLOBAL_PWR_REQ_DIS ; 
 int /*<<< orphan*/  RBBMIF_TIMEOUT_DIS ; 
 int /*<<< orphan*/  RBBMIF_TIMEOUT_DIS_2 ; 
 int /*<<< orphan*/  REFCLK_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_hwseq*) ; 

void FUNC3(struct dc *dc)
{
	struct dce_hwseq *hws = dc->hwseq;

	/* RBBMIF
	 * disable RBBMIF timeout detection for all clients
	 * Ensure RBBMIF does not drop register accesses due to the per-client timeout
	 */
	FUNC1(RBBMIF_TIMEOUT_DIS, 0xFFFFFFFF);
	FUNC1(RBBMIF_TIMEOUT_DIS_2, 0xFFFFFFFF);

	/* DCCG */
	FUNC2(hws);

	FUNC0(DC_MEM_GLOBAL_PWR_REQ_CNTL, DC_MEM_GLOBAL_PWR_REQ_DIS, 0);

	/* DCHUB/MMHUBBUB
	 * set global timer refclk divider
	 * 100Mhz refclk -> 2
	 * 27Mhz refclk ->  1
	 * 48Mhz refclk ->  1
	 */
	FUNC0(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_REFDIV, 2);
	FUNC0(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_ENABLE, 1);
	FUNC1(REFCLK_CNTL, 0);

	/* OPTC
	 * OTG_CONTROL.OTG_DISABLE_POINT_CNTL = 0x3; will be set during optc2_enable_crtc
	 */

	/* AZ
	 * default value is 0x64 for 100Mhz ref clock, if the ref clock is 100Mhz, no need to program this regiser,
	 * if not, it should be programmed according to the ref clock
	 */
	FUNC0(AZALIA_AUDIO_DTO, AZALIA_AUDIO_DTO_MODULE, 0x64);
	/* Enable controller clock gating */
	FUNC1(AZALIA_CONTROLLER_CLOCK_GATING, 0x1);
}