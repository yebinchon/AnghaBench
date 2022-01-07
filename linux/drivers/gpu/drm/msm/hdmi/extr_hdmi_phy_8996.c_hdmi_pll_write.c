
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_pll_8996 {scalar_t__ mmio_qserdes_com; } ;


 int msm_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hdmi_pll_write(struct hdmi_pll_8996 *pll, int offset,
      u32 data)
{
 msm_writel(data, pll->mmio_qserdes_com + offset);
}
