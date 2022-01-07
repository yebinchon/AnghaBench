
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int dpte_group_bytes; int mpte_group_bytes; int min_meta_chunk_bytes; int meta_chunk_bytes; int min_chunk_bytes; int chunk_bytes; } ;
typedef TYPE_1__ display_data_rq_sizing_params_st ;


 int dml_print (char*,...) ;

void print__data_rq_sizing_params_st(struct display_mode_lib *mode_lib, display_data_rq_sizing_params_st rq_sizing)
{
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
 dml_print("DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_SIZING_PARAM_ST\n");
 dml_print("DML_RQ_DLG_CALC:    chunk_bytes           = %0d\n", rq_sizing.chunk_bytes);
 dml_print("DML_RQ_DLG_CALC:    min_chunk_bytes       = %0d\n", rq_sizing.min_chunk_bytes);
 dml_print("DML_RQ_DLG_CALC:    meta_chunk_bytes      = %0d\n", rq_sizing.meta_chunk_bytes);
 dml_print(
   "DML_RQ_DLG_CALC:    min_meta_chunk_bytes  = %0d\n",
   rq_sizing.min_meta_chunk_bytes);
 dml_print("DML_RQ_DLG_CALC:    mpte_group_bytes      = %0d\n", rq_sizing.mpte_group_bytes);
 dml_print("DML_RQ_DLG_CALC:    dpte_group_bytes      = %0d\n", rq_sizing.dpte_group_bytes);
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
}
