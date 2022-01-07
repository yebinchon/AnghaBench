
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;


 int dss_pll_unregister (struct dss_pll*) ;

void dss_video_pll_uninit(struct dss_pll *pll)
{
 dss_pll_unregister(pll);
}
