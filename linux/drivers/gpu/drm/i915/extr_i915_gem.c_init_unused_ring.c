
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


 int RING_CTL (int ) ;
 int RING_HEAD (int ) ;
 int RING_START (int ) ;
 int RING_TAIL (int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void init_unused_ring(struct intel_gt *gt, u32 base)
{
 struct intel_uncore *uncore = gt->uncore;

 intel_uncore_write(uncore, RING_CTL(base), 0);
 intel_uncore_write(uncore, RING_HEAD(base), 0);
 intel_uncore_write(uncore, RING_TAIL(base), 0);
 intel_uncore_write(uncore, RING_START(base), 0);
}
