
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline void dw_edma_add_irq_mask(u32 *mask, u32 alloc, u16 cnt)
{
 while (*mask * alloc < cnt)
  (*mask)++;
}
