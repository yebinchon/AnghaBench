#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pte_row_height_linear; int /*<<< orphan*/  swath_height; int /*<<< orphan*/  mpte_group_size; int /*<<< orphan*/  dpte_group_size; int /*<<< orphan*/  min_meta_chunk_size; int /*<<< orphan*/  meta_chunk_size; int /*<<< orphan*/  min_chunk_size; int /*<<< orphan*/  chunk_size; } ;
typedef  TYPE_1__ display_data_rq_regs_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct display_mode_lib *mode_lib, display_data_rq_regs_st rq_regs)
{
	FUNC0("DML_RQ_DLG_CALC: =====================================\n");
	FUNC0("DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_REGS_ST\n");
	FUNC0("DML_RQ_DLG_CALC:    chunk_size              = 0x%0x\n", rq_regs.chunk_size);
	FUNC0("DML_RQ_DLG_CALC:    min_chunk_size          = 0x%0x\n", rq_regs.min_chunk_size);
	FUNC0("DML_RQ_DLG_CALC:    meta_chunk_size         = 0x%0x\n", rq_regs.meta_chunk_size);
	FUNC0(
			"DML_RQ_DLG_CALC:    min_meta_chunk_size     = 0x%0x\n",
			rq_regs.min_meta_chunk_size);
	FUNC0("DML_RQ_DLG_CALC:    dpte_group_size         = 0x%0x\n", rq_regs.dpte_group_size);
	FUNC0("DML_RQ_DLG_CALC:    mpte_group_size         = 0x%0x\n", rq_regs.mpte_group_size);
	FUNC0("DML_RQ_DLG_CALC:    swath_height            = 0x%0x\n", rq_regs.swath_height);
	FUNC0(
			"DML_RQ_DLG_CALC:    pte_row_height_linear   = 0x%0x\n",
			rq_regs.pte_row_height_linear);
	FUNC0("DML_RQ_DLG_CALC: =====================================\n");
}