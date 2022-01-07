
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
 int SIZE_MGR (int) ;
 int SR (struct dispc_device*,int ) ;
 int TIMING_H (int) ;
 int TIMING_V (int) ;
 int TRANS_COLOR (int) ;
 int dispc_get_num_mgrs (struct dispc_device*) ;
 int dispc_get_num_ovls (struct dispc_device*) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_save_context(struct dispc_device *dispc)
{
 int i, j;

 DSSDBG("dispc_save_context\n");

 SR(dispc, IRQENABLE);
 SR(dispc, CONTROL);
 SR(dispc, CONFIG);
 SR(dispc, LINE_NUMBER);
 if (dispc_has_feature(dispc, FEAT_ALPHA_FIXED_ZORDER) ||
   dispc_has_feature(dispc, FEAT_ALPHA_FREE_ZORDER))
  SR(dispc, GLOBAL_ALPHA);
 if (dispc_has_feature(dispc, FEAT_MGR_LCD2)) {
  SR(dispc, CONTROL2);
  SR(dispc, CONFIG2);
 }
 if (dispc_has_feature(dispc, FEAT_MGR_LCD3)) {
  SR(dispc, CONTROL3);
  SR(dispc, CONFIG3);
 }

 for (i = 0; i < dispc_get_num_mgrs(dispc); i++) {
  SR(dispc, DEFAULT_COLOR(i));
  SR(dispc, TRANS_COLOR(i));
  SR(dispc, SIZE_MGR(i));
  if (i == OMAP_DSS_CHANNEL_DIGIT)
   continue;
  SR(dispc, TIMING_H(i));
  SR(dispc, TIMING_V(i));
  SR(dispc, POL_FREQ(i));
  SR(dispc, DIVISORo(i));

  SR(dispc, DATA_CYCLE1(i));
  SR(dispc, DATA_CYCLE2(i));
  SR(dispc, DATA_CYCLE3(i));

  if (dispc_has_feature(dispc, FEAT_CPR)) {
   SR(dispc, CPR_COEF_R(i));
   SR(dispc, CPR_COEF_G(i));
   SR(dispc, CPR_COEF_B(i));
  }
 }

 for (i = 0; i < dispc_get_num_ovls(dispc); i++) {
  SR(dispc, OVL_BA0(i));
  SR(dispc, OVL_BA1(i));
  SR(dispc, OVL_POSITION(i));
  SR(dispc, OVL_SIZE(i));
  SR(dispc, OVL_ATTRIBUTES(i));
  SR(dispc, OVL_FIFO_THRESHOLD(i));
  SR(dispc, OVL_ROW_INC(i));
  SR(dispc, OVL_PIXEL_INC(i));
  if (dispc_has_feature(dispc, FEAT_PRELOAD))
   SR(dispc, OVL_PRELOAD(i));
  if (i == OMAP_DSS_GFX) {
   SR(dispc, OVL_WINDOW_SKIP(i));
   SR(dispc, OVL_TABLE_BA(i));
   continue;
  }
  SR(dispc, OVL_FIR(i));
  SR(dispc, OVL_PICTURE_SIZE(i));
  SR(dispc, OVL_ACCU0(i));
  SR(dispc, OVL_ACCU1(i));

  for (j = 0; j < 8; j++)
   SR(dispc, OVL_FIR_COEF_H(i, j));

  for (j = 0; j < 8; j++)
   SR(dispc, OVL_FIR_COEF_HV(i, j));

  for (j = 0; j < 5; j++)
   SR(dispc, OVL_CONV_COEF(i, j));

  if (dispc_has_feature(dispc, FEAT_FIR_COEF_V)) {
   for (j = 0; j < 8; j++)
    SR(dispc, OVL_FIR_COEF_V(i, j));
  }

  if (dispc_has_feature(dispc, FEAT_HANDLE_UV_SEPARATE)) {
   SR(dispc, OVL_BA0_UV(i));
   SR(dispc, OVL_BA1_UV(i));
   SR(dispc, OVL_FIR2(i));
   SR(dispc, OVL_ACCU2_0(i));
   SR(dispc, OVL_ACCU2_1(i));

   for (j = 0; j < 8; j++)
    SR(dispc, OVL_FIR_COEF_H2(i, j));

   for (j = 0; j < 8; j++)
    SR(dispc, OVL_FIR_COEF_HV2(i, j));

   for (j = 0; j < 8; j++)
    SR(dispc, OVL_FIR_COEF_V2(i, j));
  }
  if (dispc_has_feature(dispc, FEAT_ATTR2))
   SR(dispc, OVL_ATTRIBUTES2(i));
 }

 if (dispc_has_feature(dispc, FEAT_CORE_CLK_DIV))
  SR(dispc, DIVISOR);

 dispc->ctx_valid = 1;

 DSSDBG("context saved\n");
}
