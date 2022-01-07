
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 unsigned int edma_read (struct edma_cc*,int) ;

__attribute__((used)) static inline unsigned int edma_read_array(struct edma_cc *ecc, int offset,
        int i)
{
 return edma_read(ecc, offset + (i << 2));
}
