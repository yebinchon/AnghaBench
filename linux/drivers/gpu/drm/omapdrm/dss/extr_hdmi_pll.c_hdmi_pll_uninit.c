
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;
struct hdmi_pll_data {struct dss_pll pll; } ;


 int dss_pll_unregister (struct dss_pll*) ;

void hdmi_pll_uninit(struct hdmi_pll_data *hpll)
{
 struct dss_pll *pll = &hpll->pll;

 dss_pll_unregister(pll);
}
