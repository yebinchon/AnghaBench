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
struct TYPE_4__ {int /*<<< orphan*/  ctl_lo; int /*<<< orphan*/  ctl_hi; int /*<<< orphan*/  block_ts_lo; int /*<<< orphan*/  llp; int /*<<< orphan*/  dar; int /*<<< orphan*/  sar; } ;
struct axi_dma_desc {TYPE_2__ lli; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct axi_dma_chan *chan,
			      struct axi_dma_desc *desc)
{
	FUNC1(FUNC0(&chan->vc.chan),
		"SAR: 0x%llx DAR: 0x%llx LLP: 0x%llx BTS 0x%x CTL: 0x%x:%08x",
		FUNC3(desc->lli.sar),
		FUNC3(desc->lli.dar),
		FUNC3(desc->lli.llp),
		FUNC2(desc->lli.block_ts_lo),
		FUNC2(desc->lli.ctl_hi),
		FUNC2(desc->lli.ctl_lo));
}