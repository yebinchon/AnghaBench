
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_uncore {scalar_t__ fifo_count; int i915; } ;


 int DRM_DEBUG (char*,scalar_t__) ;
 scalar_t__ GT_FIFO_NUM_RESERVED_ENTRIES ;
 int GT_FIFO_TIMEOUT_MS ;
 scalar_t__ IS_VALLEYVIEW (int ) ;
 scalar_t__ fifo_free_entries (struct intel_uncore*) ;
 scalar_t__ wait_for_atomic (int,int ) ;

__attribute__((used)) static void __gen6_gt_wait_for_fifo(struct intel_uncore *uncore)
{
 u32 n;



 if (IS_VALLEYVIEW(uncore->i915))
  n = fifo_free_entries(uncore);
 else
  n = uncore->fifo_count;

 if (n <= GT_FIFO_NUM_RESERVED_ENTRIES) {
  if (wait_for_atomic((n = fifo_free_entries(uncore)) >
        GT_FIFO_NUM_RESERVED_ENTRIES,
        GT_FIFO_TIMEOUT_MS)) {
   DRM_DEBUG("GT_FIFO timeout, entries: %u\n", n);
   return;
  }
 }

 uncore->fifo_count = n - 1;
}
