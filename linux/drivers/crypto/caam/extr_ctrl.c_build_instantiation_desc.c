
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int JUMP_CLASS_CLASS1 ;
 int JUMP_TYPE_HALT ;
 int LDST_SRCDST_WORD_CLRW ;
 int OP_ALG_AAI_RNG4_SK ;
 int OP_ALG_AAI_SHIFT ;
 int OP_ALG_ALGSEL_RNG ;
 int OP_ALG_AS_INIT ;
 int OP_TYPE_CLASS1_ALG ;
 int* append_jump (int*,int) ;
 int append_load_imm_u32 (int*,int,int ) ;
 int append_operation (int*,int) ;
 int init_job_desc (int*,int ) ;
 int set_jump_tgt_here (int*,int*) ;

__attribute__((used)) static void build_instantiation_desc(u32 *desc, int handle, int do_sk)
{
 u32 *jump_cmd, op_flags;

 init_job_desc(desc, 0);

 op_flags = OP_TYPE_CLASS1_ALG | OP_ALG_ALGSEL_RNG |
   (handle << OP_ALG_AAI_SHIFT) | OP_ALG_AS_INIT;


 append_operation(desc, op_flags);

 if (!handle && do_sk) {





  jump_cmd = append_jump(desc, JUMP_CLASS_CLASS1);
  set_jump_tgt_here(desc, jump_cmd);





  append_load_imm_u32(desc, 1, LDST_SRCDST_WORD_CLRW);


  append_operation(desc, OP_TYPE_CLASS1_ALG | OP_ALG_ALGSEL_RNG |
     OP_ALG_AAI_RNG4_SK);
 }

 append_jump(desc, JUMP_CLASS_CLASS1 | JUMP_TYPE_HALT);
}
