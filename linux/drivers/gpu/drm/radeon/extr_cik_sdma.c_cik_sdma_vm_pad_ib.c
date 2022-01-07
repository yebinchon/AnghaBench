
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ib {int length_dw; int * ptr; } ;


 int SDMA_OPCODE_NOP ;
 int SDMA_PACKET (int ,int ,int ) ;

void cik_sdma_vm_pad_ib(struct radeon_ib *ib)
{
 while (ib->length_dw & 0x7)
  ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_NOP, 0, 0);
}
