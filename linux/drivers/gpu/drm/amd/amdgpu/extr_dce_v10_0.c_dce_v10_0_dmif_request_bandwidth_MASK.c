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
struct dce10_wm_params {int disp_clk; } ;
struct TYPE_7__ {void* full; } ;
typedef  TYPE_1__ fixed20_12 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__,TYPE_1__) ; 
 void* FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

__attribute__((used)) static u32 FUNC4(struct dce10_wm_params *wm)
{
	/* Calculate the DMIF Request Bandwidth */
	fixed20_12 disp_clk_request_efficiency; /* 0.8 */
	fixed20_12 disp_clk, bandwidth;
	fixed20_12 a, b;

	a.full = FUNC0(1000);
	disp_clk.full = FUNC0(wm->disp_clk);
	disp_clk.full = FUNC1(disp_clk, a);
	a.full = FUNC0(32);
	b.full = FUNC2(a, disp_clk);

	a.full = FUNC0(10);
	disp_clk_request_efficiency.full = FUNC0(8);
	disp_clk_request_efficiency.full = FUNC1(disp_clk_request_efficiency, a);

	bandwidth.full = FUNC2(b, disp_clk_request_efficiency);

	return FUNC3(bandwidth);
}