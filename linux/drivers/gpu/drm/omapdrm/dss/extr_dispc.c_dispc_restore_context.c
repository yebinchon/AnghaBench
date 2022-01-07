
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int ctx_valid; } ;


 int CONFIG ;
 int CONFIG2 ;
 int CONFIG3 ;
 int CONTROL ;
 int CONTROL2 ;
 int CONTROL3 ;
 int CPR_COEF_B (int) ;
 int CPR_COEF_G (int) ;
 int CPR_COEF_R (int) ;
 int DATA_CYCLE1 (int) ;
 int DATA_CYCLE2 (int) ;
 int DATA_CYCLE3 (int) ;
 int DEFAULT_COLOR (int) ;
 int DISPC_IRQ_SYNC_LOST_DIGIT ;
 int DIVISOR ;
 int DIVISORo (int) ;
 int DSSDBG (char*) ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 int FEAT_ALPHA_FREE_ZORDER ;
 int FEAT_ATTR2 ;
 int FEAT_CORE_CLK_DIV ;
 int FEAT_CPR ;
 int FEAT_FIR_COEF_V ;
 int FEAT_HANDLE_UV_SEPARATE ;
 int FEAT_MGR_LCD2 ;
 int FEAT_MGR_LCD3 ;
 int FEAT_PRELOAD ;
 int GLOBAL_ALPHA ;
 int IRQENABLE ;
 int LINE_NUMBER ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_GFX ;
 int OVL_ACCU0 (int) ;
 int OVL_ACCU1 (int) ;
 int OVL_ACCU2_0 (int) ;
 int OVL_ACCU2_1 (int) ;
 int OVL_ATTRIBUTES (int) ;
 int OVL_ATTRIBUTES2 (int) ;
 int OVL_BA0 (int) ;
 int OVL_BA0_UV (int) ;
 int OVL_BA1 (int) ;
 int OVL_BA1_UV (int) ;
 int OVL_CONV_COEF (int,int) ;
 int OVL_FIFO_THRESHOLD (int) ;
 int OVL_FIR (int) ;
 int OVL_FIR2 (int) ;
 int OVL_FIR_COEF_H (int,int) ;
 int OVL_FIR_COEF_H2 (int,int) ;
 int OVL_FIR_COEF_HV (int,int) ;
 int OVL_FIR_COEF_HV2 (int,int) ;
 int OVL_FIR_COEF_V (int,int) ;
 int OVL_FIR_COEF_V2 (int,int) ;
 int OVL_PICTURE_SIZE (int) ;
 int OVL_PIXEL_INC (int) ;
 int OVL_POSITION (int) ;
 int OVL_PRELOAD (int) ;
 int OVL_ROW_INC (int) ;
 int OVL_SIZE (int) ;
 int OVL_TABLE_BA (int) ;
 int OVL_WINDOW_SKIP (int) ;
 int POL_FREQ (int) ;
 int RR (struct dispc_device*,int ) ;
 int SIZE_MGR (int) ;
 int TIMING_H (int) ;
 int TIMING_V (int) ;
 int TRANS_COLOR (int) ;
 int dispc_clear_irqstatus (struct dispc_device*,int ) ;
 int dispc_get_num_mgrs (struct dispc_device*) ;
 int dispc_get_num_ovls (struct dispc_device*) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_restore_context(struct dispc_device *dispc)
{
 int i, j;

 DSSDBG("dispc_restore_context\n");

 if (!dispc->ctx_valid)
  return;



 RR(dispc, CONFIG);
 RR(dispc, LINE_NUMBER);
 if (dispc_has_feature(dispc, FEAT_ALPHA_FIXED_ZORDER) ||
   dispc_has_feature(dispc, FEAT_ALPHA_FREE_ZORDER))
  RR(dispc, GLOBAL_ALPHA);
 if (dispc_has_feature(dispc, FEAT_MGR_LCD2))
  RR(dispc, CONFIG2);
 if (dispc_has_feature(dispc, FEAT_MGR_LCD3))
  RR(dispc, CONFIG3);

 for (i = 0; i < dispc_get_num_mgrs(dispc); i++) {
  RR(dispc, DEFAULT_COLOR(i));
  RR(dispc, TRANS_COLOR(i));
  RR(dispc, SIZE_MGR(i));
  if (i == OMAP_DSS_CHANNEL_DIGIT)
   continue;
  RR(dispc, TIMING_H(i));
  RR(dispc, TIMING_V(i));
  RR(dispc, POL_FREQ(i));
  RR(dispc, DIVISORo(i));

  RR(dispc, DATA_CYCLE1(i));
  RR(dispc, DATA_CYCLE2(i));
  RR(dispc, DATA_CYCLE3(i));

  if (dispc_has_feature(dispc, FEAT_CPR)) {
   RR(dispc, CPR_COEF_R(i));
   RR(dispc, CPR_COEF_G(i));
   RR(dispc, CPR_COEF_B(i));
  }
 }

 for (i = 0; i < dispc_get_num_ovls(dispc); i++) {
  RR(dispc, OVL_BA0(i));
  RR(dispc, OVL_BA1(i));
  RR(dispc, OVL_POSITION(i));
  RR(dispc, OVL_SIZE(i));
  RR(dispc, OVL_ATTRIBUTES(i));
  RR(dispc, OVL_FIFO_THRESHOLD(i));
  RR(dispc, OVL_ROW_INC(i));
  RR(dispc, OVL_PIXEL_INC(i));
  if (dispc_has_feature(dispc, FEAT_PRELOAD))
   RR(dispc, OVL_PRELOAD(i));
  if (i == OMAP_DSS_GFX) {
   RR(dispc, OVL_WINDOW_SKIP(i));
   RR(dispc, OVL_TABLE_BA(i));
   continue;
  }
  RR(dispc, OVL_FIR(i));
  RR(dispc, OVL_PICTURE_SIZE(i));
  RR(dispc, OVL_ACCU0(i));
  RR(dispc, OVL_ACCU1(i));

  for (j = 0; j < 8; j++)
   RR(dispc, OVL_FIR_COEF_H(i, j));

  for (j = 0; j < 8; j++)
   RR(dispc, OVL_FIR_COEF_HV(i, j));

  for (j = 0; j < 5; j++)
   RR(dispc, OVL_CONV_COEF(i, j));

  if (dispc_has_feature(dispc, FEAT_FIR_COEF_V)) {
   for (j = 0; j < 8; j++)
    RR(dispc, OVL_FIR_COEF_V(i, j));
  }

  if (dispc_has_feature(dispc, FEAT_HANDLE_UV_SEPARATE)) {
   RR(dispc, OVL_BA0_UV(i));
   RR(dispc, OVL_BA1_UV(i));
   RR(dispc, OVL_FIR2(i));
   RR(dispc, OVL_ACCU2_0(i));
   RR(dispc, OVL_ACCU2_1(i));

   for (j = 0; j < 8; j++)
    RR(dispc, OVL_FIR_COEF_H2(i, j));

   for (j = 0; j < 8; j++)
    RR(dispc, OVL_FIR_COEF_HV2(i, j));

   for (j = 0; j < 8; j++)
    RR(dispc, OVL_FIR_COEF_V2(i, j));
  }
  if (dispc_has_feature(dispc, FEAT_ATTR2))
   RR(dispc, OVL_ATTRIBUTES2(i));
 }

 if (dispc_has_feature(dispc, FEAT_CORE_CLK_DIV))
  RR(dispc, DIVISOR);


 RR(dispc, CONTROL);
 if (dispc_has_feature(dispc, FEAT_MGR_LCD2))
  RR(dispc, CONTROL2);
 if (dispc_has_feature(dispc, FEAT_MGR_LCD3))
  RR(dispc, CONTROL3);

 dispc_clear_irqstatus(dispc, DISPC_IRQ_SYNC_LOST_DIGIT);





 RR(dispc, IRQENABLE);

 DSSDBG("context restored\n");
}
