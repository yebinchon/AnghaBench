
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_pll_8996 {int dummy; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS ;
 int hdmi_pll_read (struct hdmi_pll_8996*,int ) ;
 struct hdmi_pll_8996* hw_clk_to_pll (struct clk_hw*) ;

__attribute__((used)) static int hdmi_8996_pll_is_enabled(struct clk_hw *hw)
{
 struct hdmi_pll_8996 *pll = hw_clk_to_pll(hw);
 u32 status;
 int pll_locked;

 status = hdmi_pll_read(pll, REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS);
 pll_locked = status & BIT(0);

 return pll_locked;
}
