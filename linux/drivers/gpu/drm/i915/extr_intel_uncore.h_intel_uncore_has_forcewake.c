
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int flags; } ;


 int UNCORE_HAS_FORCEWAKE ;

__attribute__((used)) static inline bool
intel_uncore_has_forcewake(const struct intel_uncore *uncore)
{
 return uncore->flags & UNCORE_HAS_FORCEWAKE;
}
