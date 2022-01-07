
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int QPU_ADD_A ;
 scalar_t__ QPU_GET_FIELD (int ,int ) ;
 scalar_t__ QPU_MUX_A ;
 scalar_t__ QPU_MUX_B ;
 scalar_t__ QPU_MUX_R3 ;
 int QPU_RADDR_A ;
 int QPU_RADDR_B ;
 int QPU_SIG ;
 scalar_t__ QPU_SIG_SMALL_IMM ;

__attribute__((used)) static uint32_t
raddr_add_a_to_live_reg_index(uint64_t inst)
{
 uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);
 uint32_t add_a = QPU_GET_FIELD(inst, QPU_ADD_A);
 uint32_t raddr_a = QPU_GET_FIELD(inst, QPU_RADDR_A);
 uint32_t raddr_b = QPU_GET_FIELD(inst, QPU_RADDR_B);

 if (add_a == QPU_MUX_A)
  return raddr_a;
 else if (add_a == QPU_MUX_B && sig != QPU_SIG_SMALL_IMM)
  return 32 + raddr_b;
 else if (add_a <= QPU_MUX_R3)
  return 64 + add_a;
 else
  return ~0;
}
