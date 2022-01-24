#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct debugfs_entries {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_12__ {scalar_t__ mode; int rd_ch_cnt; } ;
struct TYPE_11__ {int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; } ;
struct TYPE_8__ {TYPE_1__* ch; } ;
struct TYPE_9__ {TYPE_2__ unroll; } ;
struct TYPE_10__ {TYPE_3__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/ * padding_2; int /*<<< orphan*/  rd; } ;

/* Variables and functions */
 int FUNC0 (struct debugfs_entries const*) ; 
 char* CHANNEL_STR ; 
 scalar_t__ EDMA_MODE_UNROLL ; 
 struct debugfs_entries const FUNC1 (int /*<<< orphan*/ ) ; 
 struct debugfs_entries const FUNC2 (int /*<<< orphan*/ ) ; 
 char* READ_STR ; 
 int /*<<< orphan*/  abort_imwr_high ; 
 int /*<<< orphan*/  abort_imwr_low ; 
 int /*<<< orphan*/  ch01_imwr_data ; 
 int /*<<< orphan*/  ch0_pwr_en ; 
 int /*<<< orphan*/  ch1_pwr_en ; 
 int /*<<< orphan*/  ch23_imwr_data ; 
 int /*<<< orphan*/  ch2_pwr_en ; 
 int /*<<< orphan*/  ch3_pwr_en ; 
 int /*<<< orphan*/  ch45_imwr_data ; 
 int /*<<< orphan*/  ch4_pwr_en ; 
 int /*<<< orphan*/  ch5_pwr_en ; 
 int /*<<< orphan*/  ch67_imwr_data ; 
 int /*<<< orphan*/  ch6_pwr_en ; 
 int /*<<< orphan*/  ch7_pwr_en ; 
 int /*<<< orphan*/  ch_arb_weight_high ; 
 int /*<<< orphan*/  ch_arb_weight_low ; 
 struct dentry* FUNC3 (char*,struct dentry*) ; 
 int /*<<< orphan*/  done_imwr_high ; 
 int /*<<< orphan*/  done_imwr_low ; 
 int /*<<< orphan*/  doorbell ; 
 TYPE_6__* dw ; 
 int /*<<< orphan*/  FUNC4 (struct debugfs_entries const*,int,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dentry*) ; 
 int /*<<< orphan*/  engine_chgroup ; 
 int /*<<< orphan*/  engine_en ; 
 int /*<<< orphan*/  engine_hshake_cnt_high ; 
 int /*<<< orphan*/  engine_hshake_cnt_low ; 
 int /*<<< orphan*/  err_status_high ; 
 int /*<<< orphan*/  err_status_low ; 
 int /*<<< orphan*/  int_clear ; 
 int /*<<< orphan*/  int_mask ; 
 int /*<<< orphan*/  int_status ; 
 TYPE_5__** lim ; 
 int /*<<< orphan*/  linked_list_err_en ; 
 TYPE_4__* regs ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC7(struct dentry *dir)
{
	const struct debugfs_entries debugfs_regs[] = {
		/* eDMA global registers */
		FUNC1(engine_en),
		FUNC1(doorbell),
		FUNC1(ch_arb_weight_low),
		FUNC1(ch_arb_weight_high),
		/* eDMA interrupts registers */
		FUNC1(int_status),
		FUNC1(int_mask),
		FUNC1(int_clear),
		FUNC1(err_status_low),
		FUNC1(err_status_high),
		FUNC1(linked_list_err_en),
		FUNC1(done_imwr_low),
		FUNC1(done_imwr_high),
		FUNC1(abort_imwr_low),
		FUNC1(abort_imwr_high),
		FUNC1(ch01_imwr_data),
		FUNC1(ch23_imwr_data),
		FUNC1(ch45_imwr_data),
		FUNC1(ch67_imwr_data),
	};
	const struct debugfs_entries debugfs_unroll_regs[] = {
		/* eDMA channel context grouping */
		FUNC2(engine_chgroup),
		FUNC2(engine_hshake_cnt_low),
		FUNC2(engine_hshake_cnt_high),
		FUNC2(ch0_pwr_en),
		FUNC2(ch1_pwr_en),
		FUNC2(ch2_pwr_en),
		FUNC2(ch3_pwr_en),
		FUNC2(ch4_pwr_en),
		FUNC2(ch5_pwr_en),
		FUNC2(ch6_pwr_en),
		FUNC2(ch7_pwr_en),
	};
	struct dentry *regs_dir, *ch_dir;
	int nr_entries, i;
	char name[16];

	regs_dir = FUNC3(READ_STR, dir);
	if (!regs_dir)
		return;

	nr_entries = FUNC0(debugfs_regs);
	FUNC4(debugfs_regs, nr_entries, regs_dir);

	if (dw->mode == EDMA_MODE_UNROLL) {
		nr_entries = FUNC0(debugfs_unroll_regs);
		FUNC4(debugfs_unroll_regs, nr_entries,
					   regs_dir);
	}

	for (i = 0; i < dw->rd_ch_cnt; i++) {
		FUNC6(name, sizeof(name), "%s:%d", CHANNEL_STR, i);

		ch_dir = FUNC3(name, regs_dir);
		if (!ch_dir)
			return;

		FUNC5(&regs->type.unroll.ch[i].rd, ch_dir);

		lim[1][i].start = &regs->type.unroll.ch[i].rd;
		lim[1][i].end = &regs->type.unroll.ch[i].padding_2[0];
	}
}