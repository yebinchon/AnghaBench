
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_pll_8996 {int dummy; } ;


 int BIT (int ) ;
 int DBG (char*,...) ;
 int HDMI_PLL_POLL_MAX_READS ;
 unsigned long HDMI_PLL_POLL_TIMEOUT_US ;
 int REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS ;
 int hdmi_pll_read (struct hdmi_pll_8996*,int ) ;
 int udelay (unsigned long) ;

__attribute__((used)) static int hdmi_8996_pll_lock_status(struct hdmi_pll_8996 *pll)
{
 u32 status;
 int nb_tries = HDMI_PLL_POLL_MAX_READS;
 unsigned long timeout = HDMI_PLL_POLL_TIMEOUT_US;
 int pll_locked = 0;

 DBG("Waiting for PLL lock");

 while (nb_tries--) {
  status = hdmi_pll_read(pll,
           REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS);
  pll_locked = status & BIT(0);

  if (pll_locked)
   break;

  udelay(timeout);
 }

 DBG("HDMI PLL is %slocked", pll_locked ? "" : "*not* ");

 return pll_locked;
}
