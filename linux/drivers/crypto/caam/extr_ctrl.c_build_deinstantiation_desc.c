
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int JUMP_CLASS_CLASS1 ;
 int JUMP_TYPE_HALT ;
 int OP_ALG_AAI_SHIFT ;
 int OP_ALG_ALGSEL_RNG ;
 int OP_ALG_AS_INITFINAL ;
 int OP_TYPE_CLASS1_ALG ;
 int append_jump (int *,int) ;
 int append_operation (int *,int) ;
 int init_job_desc (int *,int ) ;

__attribute__((used)) static void build_deinstantiation_desc(u32 *desc, int handle)
{
 init_job_desc(desc, 0);


 append_operation(desc, OP_TYPE_CLASS1_ALG | OP_ALG_ALGSEL_RNG |
    (handle << OP_ALG_AAI_SHIFT) | OP_ALG_AS_INITFINAL);

 append_jump(desc, JUMP_CLASS_CLASS1 | JUMP_TYPE_HALT);
}
