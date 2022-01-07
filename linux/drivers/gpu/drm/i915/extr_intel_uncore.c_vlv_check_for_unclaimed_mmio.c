
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int CLAIM_ER ;
 int CLAIM_ER_CLR ;
 int CLAIM_ER_CTR_MASK ;
 int CLAIM_ER_OVERFLOW ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;
 int __raw_uncore_write32 (struct intel_uncore*,int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static bool
vlv_check_for_unclaimed_mmio(struct intel_uncore *uncore)
{
 u32 cer;

 cer = __raw_uncore_read32(uncore, CLAIM_ER);
 if (likely(!(cer & (CLAIM_ER_OVERFLOW | CLAIM_ER_CTR_MASK))))
  return 0;

 __raw_uncore_write32(uncore, CLAIM_ER, CLAIM_ER_CLR);

 return 1;
}
