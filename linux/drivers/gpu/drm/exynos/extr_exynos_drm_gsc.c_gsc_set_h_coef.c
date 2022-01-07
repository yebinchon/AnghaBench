
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_context {int dummy; } ;


 int GSC_COEF_DEPTH ;
 int GSC_COEF_H_8T ;
 int GSC_COEF_PHASE ;
 int GSC_HCOEF (int,int,int) ;
 unsigned long GSC_SC_DOWN_RATIO_3_8 ;
 unsigned long GSC_SC_DOWN_RATIO_4_8 ;
 unsigned long GSC_SC_DOWN_RATIO_5_8 ;
 unsigned long GSC_SC_DOWN_RATIO_6_8 ;
 unsigned long GSC_SC_DOWN_RATIO_7_8 ;
 unsigned long GSC_SC_UP_MAX_RATIO ;
 int gsc_write (int ,int ) ;
 int *** h_coef_8t ;

__attribute__((used)) static void gsc_set_h_coef(struct gsc_context *ctx, unsigned long main_hratio)
{
 int i, j, k, sc_ratio;

 if (main_hratio <= GSC_SC_UP_MAX_RATIO)
  sc_ratio = 0;
 else if (main_hratio <= GSC_SC_DOWN_RATIO_7_8)
  sc_ratio = 1;
 else if (main_hratio <= GSC_SC_DOWN_RATIO_6_8)
  sc_ratio = 2;
 else if (main_hratio <= GSC_SC_DOWN_RATIO_5_8)
  sc_ratio = 3;
 else if (main_hratio <= GSC_SC_DOWN_RATIO_4_8)
  sc_ratio = 4;
 else if (main_hratio <= GSC_SC_DOWN_RATIO_3_8)
  sc_ratio = 5;
 else
  sc_ratio = 6;

 for (i = 0; i < GSC_COEF_PHASE; i++)
  for (j = 0; j < GSC_COEF_H_8T; j++)
   for (k = 0; k < GSC_COEF_DEPTH; k++)
    gsc_write(h_coef_8t[sc_ratio][i][j],
     GSC_HCOEF(i, j, k));
}
