
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_device {int ctx_valid; TYPE_1__* feat; } ;
struct TYPE_2__ {int* outputs; } ;


 int CONTROL ;
 int DSSDBG (char*) ;
 size_t OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_OUTPUT_SDI ;
 int PLL_CONTROL ;
 int SDI_CONTROL ;
 int SR (struct dss_device*,int ) ;

__attribute__((used)) static void dss_save_context(struct dss_device *dss)
{
 DSSDBG("dss_save_context\n");

 SR(dss, CONTROL);

 if (dss->feat->outputs[OMAP_DSS_CHANNEL_LCD] & OMAP_DSS_OUTPUT_SDI) {
  SR(dss, SDI_CONTROL);
  SR(dss, PLL_CONTROL);
 }

 dss->ctx_valid = 1;

 DSSDBG("context saved\n");
}
