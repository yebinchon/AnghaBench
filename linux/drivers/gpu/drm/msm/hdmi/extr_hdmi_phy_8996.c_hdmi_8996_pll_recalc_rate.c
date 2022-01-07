
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct hdmi_pll_8996 {int dummy; } ;
struct clk_hw {int dummy; } ;


 int REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0 ;
 int REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0 ;
 int REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0 ;
 int do_div (unsigned long,int) ;
 int hdmi_pll_read (struct hdmi_pll_8996*,int ) ;
 struct hdmi_pll_8996* hw_clk_to_pll (struct clk_hw*) ;
 unsigned long pll_cmp_to_fdata (int,unsigned long) ;

__attribute__((used)) static unsigned long hdmi_8996_pll_recalc_rate(struct clk_hw *hw,
            unsigned long parent_rate)
{
 struct hdmi_pll_8996 *pll = hw_clk_to_pll(hw);
 u64 fdata;
 u32 cmp1, cmp2, cmp3, pll_cmp;

 cmp1 = hdmi_pll_read(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0);
 cmp2 = hdmi_pll_read(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0);
 cmp3 = hdmi_pll_read(pll, REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0);

 pll_cmp = cmp1 | (cmp2 << 8) | (cmp3 << 16);

 fdata = pll_cmp_to_fdata(pll_cmp + 1, parent_rate);

 do_div(fdata, 10);

 return fdata;
}
