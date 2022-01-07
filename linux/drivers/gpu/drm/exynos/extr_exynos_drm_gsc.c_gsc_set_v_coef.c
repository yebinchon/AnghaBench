
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_context {int dummy; } ;


 int GSC_COEF_DEPTH ;
 int GSC_COEF_PHASE ;
 int GSC_COEF_V_4T ;
 unsigned long GSC_SC_DOWN_RATIO_3_8 ;
 unsigned long GSC_SC_DOWN_RATIO_4_8 ;
 unsigned long GSC_SC_DOWN_RATIO_5_8 ;
 unsigned long GSC_SC_DOWN_RATIO_6_8 ;
 unsigned long GSC_SC_DOWN_RATIO_7_8 ;
 unsigned long GSC_SC_UP_MAX_RATIO ;
 int GSC_VCOEF (int,int,int) ;
 int gsc_write (int ,int ) ;
 int *** v_coef_4t ;

__attribute__((used)) static void gsc_set_v_coef(struct gsc_context *ctx, unsigned long main_vratio)
{
 int i, j, k, sc_ratio;

 if (main_vratio <= GSC_SC_UP_MAX_RATIO)
  sc_ratio = 0;
 else if (main_vratio <= GSC_SC_DOWN_RATIO_7_8)
  sc_ratio = 1;
 else if (main_vratio <= GSC_SC_DOWN_RATIO_6_8)
  sc_ratio = 2;
 else if (main_vratio <= GSC_SC_DOWN_RATIO_5_8)
  sc_ratio = 3;
 else if (main_vratio <= GSC_SC_DOWN_RATIO_4_8)
  sc_ratio = 4;
 else if (main_vratio <= GSC_SC_DOWN_RATIO_3_8)
  sc_ratio = 5;
 else
  sc_ratio = 6;

 for (i = 0; i < GSC_COEF_PHASE; i++)
  for (j = 0; j < GSC_COEF_V_4T; j++)
   for (k = 0; k < GSC_COEF_DEPTH; k++)
    gsc_write(v_coef_4t[sc_ratio][i][j],
     GSC_VCOEF(i, j, k));
}
