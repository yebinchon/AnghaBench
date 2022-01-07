
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int GEN6_GT_THREAD_STATUS_CORE_MASK ;
 int GEN6_GT_THREAD_STATUS_REG ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;

__attribute__((used)) static inline u32 gt_thread_status(struct intel_uncore *uncore)
{
 u32 val;

 val = __raw_uncore_read32(uncore, GEN6_GT_THREAD_STATUS_REG);
 val &= GEN6_GT_THREAD_STATUS_CORE_MASK;

 return val;
}
