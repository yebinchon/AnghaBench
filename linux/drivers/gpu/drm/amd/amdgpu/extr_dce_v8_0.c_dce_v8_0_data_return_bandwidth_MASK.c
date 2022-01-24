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
struct dce8_wm_params {int sclk; } ;
struct TYPE_7__ {void* full; } ;
typedef  TYPE_1__ fixed20_12 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__,TYPE_1__) ; 
 void* FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

__attribute__((used)) static u32 FUNC4(struct dce8_wm_params *wm)
{
	/* Calculate the display Data return Bandwidth */
	fixed20_12 return_efficiency; /* 0.8 */
	fixed20_12 sclk, bandwidth;
	fixed20_12 a;

	a.full = FUNC0(1000);
	sclk.full = FUNC0(wm->sclk);
	sclk.full = FUNC1(sclk, a);
	a.full = FUNC0(10);
	return_efficiency.full = FUNC0(8);
	return_efficiency.full = FUNC1(return_efficiency, a);
	a.full = FUNC0(32);
	bandwidth.full = FUNC2(a, sclk);
	bandwidth.full = FUNC2(bandwidth, return_efficiency);

	return FUNC3(bandwidth);
}