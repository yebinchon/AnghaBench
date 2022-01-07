
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int eptr; void* len; void* len1; int ptr; } ;
typedef int dma_addr_t ;


 void* cpu_to_be16 (unsigned int) ;
 int cpu_to_be32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void to_talitos_ptr(struct talitos_ptr *ptr, dma_addr_t dma_addr,
      unsigned int len, bool is_sec1)
{
 ptr->ptr = cpu_to_be32(lower_32_bits(dma_addr));
 if (is_sec1) {
  ptr->len1 = cpu_to_be16(len);
 } else {
  ptr->len = cpu_to_be16(len);
  ptr->eptr = upper_32_bits(dma_addr);
 }
}
