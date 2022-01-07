
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
typedef TYPE_1__ display_data_rq_regs_st ;


 int dml_print (char*,...) ;

void print__data_rq_regs_st(struct display_mode_lib *mode_lib, display_data_rq_regs_st rq_regs)
{
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
 dml_print("DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_REGS_ST\n");
 dml_print("DML_RQ_DLG_CALC:    chunk_size              = 0x%0x\n", rq_regs.chunk_size);
 dml_print("DML_RQ_DLG_CALC:    min_chunk_size          = 0x%0x\n", rq_regs.min_chunk_size);
 dml_print("DML_RQ_DLG_CALC:    meta_chunk_size         = 0x%0x\n", rq_regs.meta_chunk_size);
 dml_print(
   "DML_RQ_DLG_CALC:    min_meta_chunk_size     = 0x%0x\n",
   rq_regs.min_meta_chunk_size);
 dml_print("DML_RQ_DLG_CALC:    dpte_group_size         = 0x%0x\n", rq_regs.dpte_group_size);
 dml_print("DML_RQ_DLG_CALC:    mpte_group_size         = 0x%0x\n", rq_regs.mpte_group_size);
 dml_print("DML_RQ_DLG_CALC:    swath_height            = 0x%0x\n", rq_regs.swath_height);
 dml_print(
   "DML_RQ_DLG_CALC:    pte_row_height_linear   = 0x%0x\n",
   rq_regs.pte_row_height_linear);
 dml_print("DML_RQ_DLG_CALC: =====================================\n");
}
