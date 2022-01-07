
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int genbit; } ;
union t3_wr {TYPE_1__ genbit; } ;
typedef int u8 ;
typedef int u32 ;
struct fw_riwrh {void* gen_tid_len; void* op_seop_flags; } ;
typedef enum t3_wr_opcode { ____Placeholder_t3_wr_opcode } t3_wr_opcode ;
typedef enum t3_wr_flags { ____Placeholder_t3_wr_flags } t3_wr_flags ;


 int V_FW_RIWR_FLAGS (int) ;
 int V_FW_RIWR_GEN (int ) ;
 int V_FW_RIWR_LEN (int ) ;
 int V_FW_RIWR_OP (int) ;
 int V_FW_RIWR_SOPEOP (int ) ;
 int V_FW_RIWR_TID (int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int wmb () ;

__attribute__((used)) static inline void build_fw_riwrh(struct fw_riwrh *wqe, enum t3_wr_opcode op,
      enum t3_wr_flags flags, u8 genbit, u32 tid,
      u8 len, u8 sopeop)
{
 wqe->op_seop_flags = cpu_to_be32(V_FW_RIWR_OP(op) |
      V_FW_RIWR_SOPEOP(sopeop) |
      V_FW_RIWR_FLAGS(flags));
 wmb();
 wqe->gen_tid_len = cpu_to_be32(V_FW_RIWR_GEN(genbit) |
           V_FW_RIWR_TID(tid) |
           V_FW_RIWR_LEN(len));

 ((union t3_wr *)wqe)->genbit.genbit = cpu_to_be64(genbit);
}
