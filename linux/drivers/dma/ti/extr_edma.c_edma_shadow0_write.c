
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 scalar_t__ EDMA_SHADOW0 ;
 int edma_write (struct edma_cc*,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void edma_shadow0_write(struct edma_cc *ecc, int offset,
          unsigned val)
{
 edma_write(ecc, EDMA_SHADOW0 + offset, val);
}
