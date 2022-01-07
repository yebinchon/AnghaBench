
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 scalar_t__ EDMA_PARM ;
 unsigned int edma_read (struct edma_cc*,scalar_t__) ;

__attribute__((used)) static inline unsigned int edma_param_read(struct edma_cc *ecc, int offset,
        int param_no)
{
 return edma_read(ecc, EDMA_PARM + offset + (param_no << 5));
}
