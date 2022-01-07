
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_forcewake_domain {int dummy; } ;


 int ACK_CLEAR ;
 int FORCEWAKE_KERNEL ;
 int fw_domain_wait_ack_clear (struct intel_uncore_forcewake_domain const*) ;
 scalar_t__ fw_domain_wait_ack_with_fallback (struct intel_uncore_forcewake_domain const*,int ) ;
 scalar_t__ likely (int) ;
 int wait_ack_clear (struct intel_uncore_forcewake_domain const*,int ) ;

__attribute__((used)) static inline void
fw_domain_wait_ack_clear_fallback(const struct intel_uncore_forcewake_domain *d)
{
 if (likely(!wait_ack_clear(d, FORCEWAKE_KERNEL)))
  return;

 if (fw_domain_wait_ack_with_fallback(d, ACK_CLEAR))
  fw_domain_wait_ack_clear(d);
}
