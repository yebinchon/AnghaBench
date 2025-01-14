
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef void* dma_addr_t ;


 int CAAM_CMD_SZ ;
 int CAAM_PTR_SZ ;
 scalar_t__ caam32_to_cpu (void*) ;
 int caam_ptr_sz ;
 void* cpu_to_caam32 (scalar_t__) ;
 void* cpu_to_caam_dma (void*) ;
 scalar_t__ desc_end (void** const) ;

__attribute__((used)) static inline void append_ptr(u32 * const desc, dma_addr_t ptr)
{
 if (caam_ptr_sz == sizeof(dma_addr_t)) {
  dma_addr_t *offset = (dma_addr_t *)desc_end(desc);

  *offset = cpu_to_caam_dma(ptr);
 } else {
  u32 *offset = (u32 *)desc_end(desc);

  *offset = cpu_to_caam_dma(ptr);
 }

 (*desc) = cpu_to_caam32(caam32_to_cpu(*desc) +
    CAAM_PTR_SZ / CAAM_CMD_SZ);
}
