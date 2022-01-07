
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int meta_bytes_per_row_ub; int meta_row_height; int meta_req_per_row_ub; int meta_chunks_per_row_ub; int dpte_bytes_per_row_ub; int dpte_row_height; int dpte_groups_per_row_ub; int dpte_req_per_row_ub; int meta_pte_bytes_per_frame_ub; int req_per_swath_ub; int swath_height; int swath_width_ub; } ;
typedef TYPE_1__ display_data_rq_dlg_params_st ;


 int dml_print (char*,...) ;

void print__data_rq_dlg_params_st(struct display_mode_lib *mode_lib, display_data_rq_dlg_params_st rq_dlg_param)
{
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
 dml_print("DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_DLG_PARAM_ST\n");
 dml_print(
   "DML_RQ_DLG_CALC:    swath_width_ub              = %0d\n",
   rq_dlg_param.swath_width_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    swath_height                = %0d\n",
   rq_dlg_param.swath_height);
 dml_print(
   "DML_RQ_DLG_CALC:    req_per_swath_ub            = %0d\n",
   rq_dlg_param.req_per_swath_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    meta_pte_bytes_per_frame_ub = %0d\n",
   rq_dlg_param.meta_pte_bytes_per_frame_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    dpte_req_per_row_ub         = %0d\n",
   rq_dlg_param.dpte_req_per_row_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    dpte_groups_per_row_ub      = %0d\n",
   rq_dlg_param.dpte_groups_per_row_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    dpte_row_height             = %0d\n",
   rq_dlg_param.dpte_row_height);
 dml_print(
   "DML_RQ_DLG_CALC:    dpte_bytes_per_row_ub       = %0d\n",
   rq_dlg_param.dpte_bytes_per_row_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    meta_chunks_per_row_ub      = %0d\n",
   rq_dlg_param.meta_chunks_per_row_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    meta_req_per_row_ub         = %0d\n",
   rq_dlg_param.meta_req_per_row_ub);
 dml_print(
   "DML_RQ_DLG_CALC:    meta_row_height             = %0d\n",
   rq_dlg_param.meta_row_height);
 dml_print(
   "DML_RQ_DLG_CALC:    meta_bytes_per_row_ub       = %0d\n",
   rq_dlg_param.meta_bytes_per_row_ub);
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
}
