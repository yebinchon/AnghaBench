
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore_forcewake_domain {int dummy; } ;


 int FORCEWAKE_ACK_TIMEOUT_MS ;
 int const fw_ack (struct intel_uncore_forcewake_domain const*) ;
 int wait_for_atomic (int,int ) ;

__attribute__((used)) static inline int
__wait_for_ack(const struct intel_uncore_forcewake_domain *d,
        const u32 ack,
        const u32 value)
{
 return wait_for_atomic((fw_ack(d) & ack) == value,
          FORCEWAKE_ACK_TIMEOUT_MS);
}
