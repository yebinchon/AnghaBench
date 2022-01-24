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
struct mcif_wb {int dummy; } ;
struct mcif_buf_params {int swlock; int luma_pitch; int chroma_pitch; int warmup_pitch; int /*<<< orphan*/ * chroma_address; int /*<<< orphan*/ * luma_address; } ;
struct dcn20_mmhubbub {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCIF_WB_BUFMGR_SW_CONTROL ; 
 int /*<<< orphan*/  MCIF_WB_BUFMGR_SW_LOCK ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_C ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_C_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_C_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_Y ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_Y_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_1_ADDR_Y_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_C ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_C_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_C_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_Y ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_Y_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_2_ADDR_Y_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_C ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_C_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_C_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_Y ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_Y_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_3_ADDR_Y_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_C ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_C_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_C_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_Y ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_Y_HIGH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_4_ADDR_Y_OFFSET ; 
 int /*<<< orphan*/  MCIF_WB_BUF_ADDR_FENCE_EN ; 
 int /*<<< orphan*/  MCIF_WB_BUF_CHROMA_PITCH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_CHROMA_SIZE ; 
 int /*<<< orphan*/  MCIF_WB_BUF_LUMA_PITCH ; 
 int /*<<< orphan*/  MCIF_WB_BUF_LUMA_SIZE ; 
 int /*<<< orphan*/  MCIF_WB_BUF_PITCH ; 
 int /*<<< orphan*/  MCIF_WB_PITCH_SIZE_WARMUP ; 
 int /*<<< orphan*/  MCIF_WB_WARM_UP_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct dcn20_mmhubbub* FUNC4 (struct mcif_wb*) ; 

__attribute__((used)) static void FUNC5(struct mcif_wb *mcif_wb,
		struct mcif_buf_params *params,
		unsigned int dest_height)
{
	struct dcn20_mmhubbub *mcif_wb20 = FUNC4(mcif_wb);

	/* sw lock buffer0~buffer3, default is 0 */
	FUNC2(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_SW_LOCK, params->swlock);

	/* buffer address for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_1_ADDR_Y, MCIF_WB_BUF_1_ADDR_Y, FUNC0(params->luma_address[0]));
	FUNC2(MCIF_WB_BUF_1_ADDR_Y_HIGH, MCIF_WB_BUF_1_ADDR_Y_HIGH, FUNC1(params->luma_address[0]));
	/* right eye sub-buffer address offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_1_ADDR_Y_OFFSET, MCIF_WB_BUF_1_ADDR_Y_OFFSET, 0);

	/* buffer address for Chroma in planar mode (unused in packing mode) */
	FUNC2(MCIF_WB_BUF_1_ADDR_C, MCIF_WB_BUF_1_ADDR_C, FUNC0(params->chroma_address[0]));
	FUNC2(MCIF_WB_BUF_1_ADDR_C_HIGH, MCIF_WB_BUF_1_ADDR_C_HIGH, FUNC1(params->chroma_address[0]));
	/* right eye offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_1_ADDR_C_OFFSET, MCIF_WB_BUF_1_ADDR_C_OFFSET, 0);

	/* buffer address for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_2_ADDR_Y, MCIF_WB_BUF_2_ADDR_Y, FUNC0(params->luma_address[1]));
	FUNC2(MCIF_WB_BUF_2_ADDR_Y_HIGH, MCIF_WB_BUF_2_ADDR_Y_HIGH, FUNC1(params->luma_address[1]));
	/* right eye sub-buffer address offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_2_ADDR_Y_OFFSET, MCIF_WB_BUF_2_ADDR_Y_OFFSET, 0);

	/* buffer address for Chroma in planar mode (unused in packing mode) */
	FUNC2(MCIF_WB_BUF_2_ADDR_C, MCIF_WB_BUF_2_ADDR_C, FUNC0(params->chroma_address[1]));
	FUNC2(MCIF_WB_BUF_2_ADDR_C_HIGH, MCIF_WB_BUF_2_ADDR_C_HIGH, FUNC1(params->chroma_address[1]));
	/* right eye offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_2_ADDR_C_OFFSET, MCIF_WB_BUF_2_ADDR_C_OFFSET, 0);

	/* buffer address for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_3_ADDR_Y, MCIF_WB_BUF_3_ADDR_Y, FUNC0(params->luma_address[2]));
	FUNC2(MCIF_WB_BUF_3_ADDR_Y_HIGH, MCIF_WB_BUF_3_ADDR_Y_HIGH, FUNC1(params->luma_address[2]));
	/* right eye sub-buffer address offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_3_ADDR_Y_OFFSET, MCIF_WB_BUF_3_ADDR_Y_OFFSET, 0);

	/* buffer address for Chroma in planar mode (unused in packing mode) */
	FUNC2(MCIF_WB_BUF_3_ADDR_C, MCIF_WB_BUF_3_ADDR_C, FUNC0(params->chroma_address[2]));
	FUNC2(MCIF_WB_BUF_3_ADDR_C_HIGH, MCIF_WB_BUF_3_ADDR_C_HIGH, FUNC1(params->chroma_address[2]));
	/* right eye offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_3_ADDR_C_OFFSET, MCIF_WB_BUF_3_ADDR_C_OFFSET, 0);

	/* buffer address for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_4_ADDR_Y, MCIF_WB_BUF_4_ADDR_Y, FUNC0(params->luma_address[3]));
	FUNC2(MCIF_WB_BUF_4_ADDR_Y_HIGH, MCIF_WB_BUF_4_ADDR_Y_HIGH, FUNC1(params->luma_address[3]));
	/* right eye sub-buffer address offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_4_ADDR_Y_OFFSET, MCIF_WB_BUF_4_ADDR_Y_OFFSET, 0);

	/* buffer address for Chroma in planar mode (unused in packing mode) */
	FUNC2(MCIF_WB_BUF_4_ADDR_C, MCIF_WB_BUF_4_ADDR_C, FUNC0(params->chroma_address[3]));
	FUNC2(MCIF_WB_BUF_4_ADDR_C_HIGH, MCIF_WB_BUF_4_ADDR_C_HIGH, FUNC1(params->chroma_address[3]));
	/* right eye offset for packing mode or Luma in planar mode */
	FUNC2(MCIF_WB_BUF_4_ADDR_C_OFFSET, MCIF_WB_BUF_4_ADDR_C_OFFSET, 0);

	/* setup luma & chroma size
	 * should be enough to contain a whole frame Luma data,
	 * the programmed value is frame buffer size [27:8], 256-byte aligned
	 */
	FUNC2(MCIF_WB_BUF_LUMA_SIZE, MCIF_WB_BUF_LUMA_SIZE, (params->luma_pitch>>8) * dest_height);
	FUNC2(MCIF_WB_BUF_CHROMA_SIZE, MCIF_WB_BUF_CHROMA_SIZE, (params->chroma_pitch>>8) * dest_height);

	/* enable address fence */
	FUNC2(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUF_ADDR_FENCE_EN, 1);

	/* setup pitch, the programmed value is [15:8], 256B align */
	FUNC3(MCIF_WB_BUF_PITCH, MCIF_WB_BUF_LUMA_PITCH, params->luma_pitch >> 8,
			MCIF_WB_BUF_CHROMA_PITCH, params->chroma_pitch >> 8);

	/* Set pitch for MC cache warm up mode */
	/* Pitch is 256 bytes aligned. The default pitch is 4K */
	/* default is 0x10 */
	FUNC2(MCIF_WB_WARM_UP_CNTL, MCIF_WB_PITCH_SIZE_WARMUP, params->warmup_pitch);
}