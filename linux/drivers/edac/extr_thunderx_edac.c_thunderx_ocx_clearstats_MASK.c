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
struct thunderx_ocx {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int OCX_LNE_CFG_RX_STAT_ENA ; 
 int OCX_LNE_CFG_RX_STAT_RDCLR ; 
 scalar_t__ FUNC1 (int,int) ; 
 int OCX_RX_LANES ; 
 int OCX_RX_LANE_STATS ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct thunderx_ocx *ocx)
{
	int lane, stat, cfg;

	for (lane = 0; lane < OCX_RX_LANES; lane++) {
		cfg = FUNC2(ocx->regs + FUNC0(lane));
		cfg |= OCX_LNE_CFG_RX_STAT_RDCLR;
		cfg &= ~OCX_LNE_CFG_RX_STAT_ENA;
		FUNC3(cfg, ocx->regs + FUNC0(lane));

		for (stat = 0; stat < OCX_RX_LANE_STATS; stat++)
			FUNC2(ocx->regs + FUNC1(lane, stat));
	}
}