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
typedef  unsigned long u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_PLL_CMP_CNT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC1(u32 pll_cmp, unsigned long ref_clk)
{
	u64 fdata = ((u64)pll_cmp) * ref_clk * 10;

	FUNC0(fdata, HDMI_PLL_CMP_CNT);

	return fdata;
}