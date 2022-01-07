
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_pll_8996 {scalar_t__ mmio_qserdes_com; } ;


 int msm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 hdmi_pll_read(struct hdmi_pll_8996 *pll, int offset)
{
 return msm_readl(pll->mmio_qserdes_com + offset);
}
