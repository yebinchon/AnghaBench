
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int req_height; int req_width; int blk256_height; int blk256_width; int stored_swath_bytes; int full_swath_bytes; } ;
typedef TYPE_1__ display_data_rq_misc_params_st ;


 int dml_print (char*,...) ;

void print__data_rq_misc_params_st(struct display_mode_lib *mode_lib, display_data_rq_misc_params_st rq_misc_param)
{
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
 dml_print("DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_MISC_PARAM_ST\n");
 dml_print(
   "DML_RQ_DLG_CALC:     full_swath_bytes   = %0d\n",
   rq_misc_param.full_swath_bytes);
 dml_print(
   "DML_RQ_DLG_CALC:     stored_swath_bytes = %0d\n",
   rq_misc_param.stored_swath_bytes);
 dml_print("DML_RQ_DLG_CALC:     blk256_width       = %0d\n", rq_misc_param.blk256_width);
 dml_print("DML_RQ_DLG_CALC:     blk256_height      = %0d\n", rq_misc_param.blk256_height);
 dml_print("DML_RQ_DLG_CALC:     req_width          = %0d\n", rq_misc_param.req_width);
 dml_print("DML_RQ_DLG_CALC:     req_height         = %0d\n", rq_misc_param.req_height);
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
}
