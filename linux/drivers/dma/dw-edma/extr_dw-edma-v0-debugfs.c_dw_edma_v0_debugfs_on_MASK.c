#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dw_edma_chip {TYPE_2__* dw; } ;
struct TYPE_3__ {int /*<<< orphan*/  vaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  rd_ch_cnt; int /*<<< orphan*/  wr_ch_cnt; int /*<<< orphan*/  mode; int /*<<< orphan*/  version; int /*<<< orphan*/  name; TYPE_1__ rg_region; } ;

/* Variables and functions */
 int /*<<< orphan*/  base_dir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* dw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  regs ; 

void FUNC4(struct dw_edma_chip *chip)
{
	dw = chip->dw;
	if (!dw)
		return;

	regs = dw->rg_region.vaddr;
	if (!regs)
		return;

	base_dir = FUNC0(dw->name, 0);
	if (!base_dir)
		return;

	FUNC2("version", 0444, base_dir, &dw->version);
	FUNC2("mode", 0444, base_dir, &dw->mode);
	FUNC1("wr_ch_cnt", 0444, base_dir, &dw->wr_ch_cnt);
	FUNC1("rd_ch_cnt", 0444, base_dir, &dw->rd_ch_cnt);

	FUNC3();
}