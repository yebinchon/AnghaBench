
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 int edma_write (struct edma_cc*,int,unsigned int) ;

__attribute__((used)) static inline void edma_write_array2(struct edma_cc *ecc, int offset, int i,
         int j, unsigned val)
{
 edma_write(ecc, offset + ((i * 2 + j) << 2), val);
}
