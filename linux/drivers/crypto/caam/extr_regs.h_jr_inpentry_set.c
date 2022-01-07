
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int caam_ptr_sz ;

__attribute__((used)) static inline void jr_inpentry_set(void *inpring, int hw_idx, dma_addr_t val)
{
 if (caam_ptr_sz == sizeof(u32)) {
  u32 *inpentry = inpring;

  inpentry[hw_idx] = val;
 } else {
  dma_addr_t *inpentry = inpring;

  inpentry[hw_idx] = val;
 }
}
