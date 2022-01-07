
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ocrdma_pa {void* hi; void* lo; } ;
typedef int dma_addr_t ;


 scalar_t__ upper_32_bits (int) ;

__attribute__((used)) static void ocrdma_build_q_pages(struct ocrdma_pa *q_pa, int cnt,
     dma_addr_t host_pa, int hw_page_size)
{
 int i;

 for (i = 0; i < cnt; i++) {
  q_pa[i].lo = (u32) (host_pa & 0xffffffff);
  q_pa[i].hi = (u32) upper_32_bits(host_pa);
  host_pa += hw_page_size;
 }
}
