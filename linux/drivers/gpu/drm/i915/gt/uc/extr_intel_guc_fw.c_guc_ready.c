
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_uncore {int dummy; } ;


 scalar_t__ GS_MIA_CORE_STATE ;
 scalar_t__ GS_UKERNEL_LAPIC_DONE ;
 scalar_t__ GS_UKERNEL_MASK ;
 scalar_t__ GS_UKERNEL_READY ;
 int GUC_STATUS ;
 scalar_t__ intel_uncore_read (struct intel_uncore*,int ) ;

__attribute__((used)) static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
{
 u32 val = intel_uncore_read(uncore, GUC_STATUS);
 u32 uk_val = val & GS_UKERNEL_MASK;

 *status = val;
 return (uk_val == GS_UKERNEL_READY) ||
  ((val & GS_MIA_CORE_STATE) && (uk_val == GS_UKERNEL_LAPIC_DONE));
}
