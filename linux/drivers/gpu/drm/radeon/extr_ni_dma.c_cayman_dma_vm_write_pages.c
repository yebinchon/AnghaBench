
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct radeon_ib {int* ptr; int length_dw; } ;
struct radeon_device {int dummy; } ;


 int DMA_PACKET (int ,int ,int ,unsigned int) ;
 int DMA_PACKET_WRITE ;
 int R600_PTE_SYSTEM ;
 int R600_PTE_VALID ;
 int radeon_vm_map_gart (struct radeon_device*,int) ;
 int upper_32_bits (int) ;

void cayman_dma_vm_write_pages(struct radeon_device *rdev,
          struct radeon_ib *ib,
          uint64_t pe,
          uint64_t addr, unsigned count,
          uint32_t incr, uint32_t flags)
{
 uint64_t value;
 unsigned ndw;

 while (count) {
  ndw = count * 2;
  if (ndw > 0xFFFFE)
   ndw = 0xFFFFE;


  ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_WRITE,
            0, 0, ndw);
  ib->ptr[ib->length_dw++] = pe;
  ib->ptr[ib->length_dw++] = upper_32_bits(pe) & 0xff;
  for (; ndw > 0; ndw -= 2, --count, pe += 8) {
   if (flags & R600_PTE_SYSTEM) {
    value = radeon_vm_map_gart(rdev, addr);
   } else if (flags & R600_PTE_VALID) {
    value = addr;
   } else {
    value = 0;
   }
   addr += incr;
   value |= flags;
   ib->ptr[ib->length_dw++] = value;
   ib->ptr[ib->length_dw++] = upper_32_bits(value);
  }
 }
}
