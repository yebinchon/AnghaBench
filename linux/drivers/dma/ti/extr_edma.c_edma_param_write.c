
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 scalar_t__ EDMA_PARM ;
 int edma_write (struct edma_cc*,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void edma_param_write(struct edma_cc *ecc, int offset,
        int param_no, unsigned val)
{
 edma_write(ecc, EDMA_PARM + offset + (param_no << 5), val);
}
