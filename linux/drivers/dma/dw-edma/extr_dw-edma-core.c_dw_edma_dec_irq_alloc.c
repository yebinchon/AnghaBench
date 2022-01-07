
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static inline void dw_edma_dec_irq_alloc(int *nr_irqs, u32 *alloc, u16 cnt)
{
 if (*nr_irqs && *alloc < cnt) {
  (*alloc)++;
  (*nr_irqs)--;
 }
}
