
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int sysreg; } ;


 int EXYNOS5433_SYSREG_DISP_HDMI_PHY ;
 int SYSREG_HDMI_REFCLK_INT_CLK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void hdmi_set_refclk(struct hdmi_context *hdata, bool on)
{
 if (!hdata->sysreg)
  return;

 regmap_update_bits(hdata->sysreg, EXYNOS5433_SYSREG_DISP_HDMI_PHY,
      SYSREG_HDMI_REFCLK_INT_CLK, on ? ~0 : 0);
}
