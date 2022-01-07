
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {scalar_t__ base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int edma_read(struct edma_cc *ecc, int offset)
{
 return (unsigned int)__raw_readl(ecc->base + offset);
}
