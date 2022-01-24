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
typedef  int u32 ;
struct hdmi_pll_8996 {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int FUNC1 (struct hdmi_pll_8996*,int /*<<< orphan*/ ) ; 
 struct hdmi_pll_8996* FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (int,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					       unsigned long parent_rate)
{
	struct hdmi_pll_8996 *pll = FUNC2(hw);
	u64 fdata;
	u32 cmp1, cmp2, cmp3, pll_cmp;

	cmp1 = FUNC1(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0);
	cmp2 = FUNC1(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0);
	cmp3 = FUNC1(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0);

	pll_cmp = cmp1 | (cmp2 << 8) | (cmp3 << 16);

	fdata = FUNC3(pll_cmp + 1, parent_rate);

	FUNC0(fdata, 10);

	return fdata;
}