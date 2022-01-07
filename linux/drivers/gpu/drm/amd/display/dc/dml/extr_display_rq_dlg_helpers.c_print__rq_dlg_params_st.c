
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int rq_c; int rq_l; } ;
typedef TYPE_1__ display_rq_dlg_params_st ;


 int dml_print (char*) ;
 int print__data_rq_dlg_params_st (struct display_mode_lib*,int ) ;

void print__rq_dlg_params_st(struct display_mode_lib *mode_lib, display_rq_dlg_params_st rq_dlg_param)
{
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
 dml_print("DML_RQ_DLG_CALC: DISPLAY_RQ_DLG_PARAM_ST\n");
 dml_print("DML_RQ_DLG_CALC:  <LUMA>\n");
 print__data_rq_dlg_params_st(mode_lib, rq_dlg_param.rq_l);
 dml_print("DML_RQ_DLG_CALC:  <CHROMA>\n");
 print__data_rq_dlg_params_st(mode_lib, rq_dlg_param.rq_c);
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
}
