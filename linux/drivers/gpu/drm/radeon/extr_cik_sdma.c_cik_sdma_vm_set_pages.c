
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;
struct radeon_ib {unsigned int* ptr; int length_dw; } ;
struct radeon_device {int dummy; } ;


 int R600_PTE_VALID ;
 int SDMA_OPCODE_GENERATE_PTE_PDE ;
 unsigned int SDMA_PACKET (int ,int ,int ) ;
 void* upper_32_bits (unsigned int) ;

void cik_sdma_vm_set_pages(struct radeon_device *rdev,
      struct radeon_ib *ib,
      uint64_t pe,
      uint64_t addr, unsigned count,
      uint32_t incr, uint32_t flags)
{
 uint64_t value;
 unsigned ndw;

 while (count) {
  ndw = count;
  if (ndw > 0x7FFFF)
   ndw = 0x7FFFF;

  if (flags & R600_PTE_VALID)
   value = addr;
  else
   value = 0;


  ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_GENERATE_PTE_PDE, 0, 0);
  ib->ptr[ib->length_dw++] = pe;
  ib->ptr[ib->length_dw++] = upper_32_bits(pe);
  ib->ptr[ib->length_dw++] = flags;
  ib->ptr[ib->length_dw++] = 0;
  ib->ptr[ib->length_dw++] = value;
  ib->ptr[ib->length_dw++] = upper_32_bits(value);
  ib->ptr[ib->length_dw++] = incr;
  ib->ptr[ib->length_dw++] = 0;
  ib->ptr[ib->length_dw++] = ndw;

  pe += ndw * 8;
  addr += ndw * incr;
  count -= ndw;
 }
}
