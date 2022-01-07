
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {scalar_t__ base; } ;


 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void edma_write(struct edma_cc *ecc, int offset, int val)
{
 __raw_writel(val, ecc->base + offset);
}
