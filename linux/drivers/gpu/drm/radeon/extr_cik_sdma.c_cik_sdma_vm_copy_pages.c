
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct radeon_ib {unsigned int* ptr; int length_dw; } ;
struct radeon_device {int dummy; } ;


 int SDMA_OPCODE_COPY ;
 unsigned int SDMA_PACKET (int ,int ,int ) ;
 int SDMA_WRITE_SUB_OPCODE_LINEAR ;
 void* lower_32_bits (unsigned int) ;
 void* upper_32_bits (unsigned int) ;

void cik_sdma_vm_copy_pages(struct radeon_device *rdev,
       struct radeon_ib *ib,
       uint64_t pe, uint64_t src,
       unsigned count)
{
 while (count) {
  unsigned bytes = count * 8;
  if (bytes > 0x1FFFF8)
   bytes = 0x1FFFF8;

  ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_COPY,
   SDMA_WRITE_SUB_OPCODE_LINEAR, 0);
  ib->ptr[ib->length_dw++] = bytes;
  ib->ptr[ib->length_dw++] = 0;
  ib->ptr[ib->length_dw++] = lower_32_bits(src);
  ib->ptr[ib->length_dw++] = upper_32_bits(src);
  ib->ptr[ib->length_dw++] = lower_32_bits(pe);
  ib->ptr[ib->length_dw++] = upper_32_bits(pe);

  pe += bytes;
  src += bytes;
  count -= bytes / 8;
 }
}
