
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 int EDMA_CCERR ;
 int EDMA_EMR ;
 int EDMA_QEMR ;
 scalar_t__ edma_read (struct edma_cc*,int ) ;
 scalar_t__ edma_read_array (struct edma_cc*,int ,int) ;

__attribute__((used)) static inline bool edma_error_pending(struct edma_cc *ecc)
{
 if (edma_read_array(ecc, EDMA_EMR, 0) ||
     edma_read_array(ecc, EDMA_EMR, 1) ||
     edma_read(ecc, EDMA_QEMR) || edma_read(ecc, EDMA_CCERR))
  return 1;

 return 0;
}
