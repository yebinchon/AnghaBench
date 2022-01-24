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
typedef  int u32 ;
struct hdmi_pll_8996 {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS ; 
 int FUNC1 (struct hdmi_pll_8996*,int /*<<< orphan*/ ) ; 
 struct hdmi_pll_8996* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct hdmi_pll_8996 *pll = FUNC2(hw);
	u32 status;
	int pll_locked;

	status = FUNC1(pll, REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS);
	pll_locked = status & FUNC0(0);

	return pll_locked;
}