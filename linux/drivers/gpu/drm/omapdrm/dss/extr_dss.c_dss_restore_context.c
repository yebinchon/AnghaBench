
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_device {TYPE_1__* feat; int ctx_valid; } ;
struct TYPE_2__ {int* outputs; } ;


 int CONTROL ;
 int DSSDBG (char*) ;
 size_t OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_OUTPUT_SDI ;
 int PLL_CONTROL ;
 int RR (struct dss_device*,int ) ;
 int SDI_CONTROL ;

__attribute__((used)) static void dss_restore_context(struct dss_device *dss)
{
 DSSDBG("dss_restore_context\n");

 if (!dss->ctx_valid)
  return;

 RR(dss, CONTROL);

 if (dss->feat->outputs[OMAP_DSS_CHANNEL_LCD] & OMAP_DSS_OUTPUT_SDI) {
  RR(dss, SDI_CONTROL);
  RR(dss, PLL_CONTROL);
 }

 DSSDBG("context restored\n");
}
