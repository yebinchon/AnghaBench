
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore_forcewake_domain {int dummy; } ;


 int __wait_for_ack (struct intel_uncore_forcewake_domain const*,int const,int ) ;

__attribute__((used)) static inline int
wait_ack_clear(const struct intel_uncore_forcewake_domain *d,
        const u32 ack)
{
 return __wait_for_ack(d, ack, 0);
}
