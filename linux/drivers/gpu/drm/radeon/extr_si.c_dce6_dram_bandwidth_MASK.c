#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct dce6_wm_params {int yclk; int dram_channels; } ;
struct TYPE_7__ {void* full; } ;
typedef  TYPE_1__ fixed20_12 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__,TYPE_1__) ; 
 void* FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

__attribute__((used)) static u32 FUNC4(struct dce6_wm_params *wm)
{
	/* Calculate raw DRAM Bandwidth */
	fixed20_12 dram_efficiency; /* 0.7 */
	fixed20_12 yclk, dram_channels, bandwidth;
	fixed20_12 a;

	a.full = FUNC0(1000);
	yclk.full = FUNC0(wm->yclk);
	yclk.full = FUNC1(yclk, a);
	dram_channels.full = FUNC0(wm->dram_channels * 4);
	a.full = FUNC0(10);
	dram_efficiency.full = FUNC0(7);
	dram_efficiency.full = FUNC1(dram_efficiency, a);
	bandwidth.full = FUNC2(dram_channels, yclk);
	bandwidth.full = FUNC2(bandwidth, dram_efficiency);

	return FUNC3(bandwidth);
}