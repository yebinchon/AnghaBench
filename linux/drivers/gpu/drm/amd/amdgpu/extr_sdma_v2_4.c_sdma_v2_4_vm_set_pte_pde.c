
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int uint32_t ;
struct amdgpu_ib {unsigned int* ptr; int length_dw; } ;


 int SDMA_OP_GEN_PTEPDE ;
 unsigned int SDMA_PKT_HEADER_OP (int ) ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void sdma_v2_4_vm_set_pte_pde(struct amdgpu_ib *ib, uint64_t pe,
         uint64_t addr, unsigned count,
         uint32_t incr, uint64_t flags)
{

 ib->ptr[ib->length_dw++] = SDMA_PKT_HEADER_OP(SDMA_OP_GEN_PTEPDE);
 ib->ptr[ib->length_dw++] = lower_32_bits(pe);
 ib->ptr[ib->length_dw++] = upper_32_bits(pe);
 ib->ptr[ib->length_dw++] = lower_32_bits(flags);
 ib->ptr[ib->length_dw++] = upper_32_bits(flags);
 ib->ptr[ib->length_dw++] = lower_32_bits(addr);
 ib->ptr[ib->length_dw++] = upper_32_bits(addr);
 ib->ptr[ib->length_dw++] = incr;
 ib->ptr[ib->length_dw++] = 0;
 ib->ptr[ib->length_dw++] = count;
}
